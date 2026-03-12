function convert_code(varargin)
    % Parse input arguments
    p = inputParser;
    addParameter(p, 'input', '', @ischar);
    parse(p, varargin{:});
    
    inputFile = p.Results.input;
    
    % Find input file if not provided
    if isempty(inputFile)
        files = dir('code_controler.c');
        if ~isempty(files)
            inputFile = files(1).name;
        end
    end
    
    fprintf('Selected input file: %s\n', inputFile);
    
    % Validate input file
    if isempty(inputFile)
        fprintf('Input file name is not provided. Code conversion aborted!!\n');
        return;
    end
    
    if ~exist(inputFile, 'file')
        fprintf('Input file %s not found. Code conversion aborted!!\n', inputFile);
        return;
    end
    
    % Check if vMCU_template folder exists
    if ~exist('./vMCU_template', 'dir')
        fprintf('vMCU_template folder not found. Code conversion aborted!!\n');
        return;
    end
    
    % Check if all required template files exist
    requiredFiles = {
        './vMCU_template/codeWrapper.cpp'
        './vMCU_template/codeWrapper.h'
        './vMCU_template/virtualCode.cpp'
        './vMCU_template/virtualCode.h'
        './vMCU_template/virtualControler.cpp'
        './vMCU_template/virtualControler.h'
    };
    
    allFilesExist = true;
    for i = 1:length(requiredFiles)
        if ~exist(requiredFiles{i}, 'file')
            allFilesExist = false;
            break;
        end
    end
    
    if ~allFilesExist
        fprintf('vMCU_template folder is not complete. Code conversion aborted!!\n');
        return;
    end
    
    % Remove existing vMCU folder if it exists
    if exist('./vMCU', 'dir')
        fprintf('Output folder vMCU exists, it will be regenerated.\n');
        rmdir('./vMCU', 's');
    end
    
    % Copy template folder to vMCU
    copyfile('./vMCU_template', './vMCU');
    
    % Read input file content
    fid = fopen(inputFile, 'r');
    contentInput = fread(fid, '*char')';
    fclose(fid);
    
    % Read virtualCode.h content
    fid = fopen('./vMCU/virtualCode.h', 'r');
    contentVirtualCode = fread(fid, '*char')';
    fclose(fid);
    
    % Replace newlines with newlines + tab
    contentInput = regexprep(contentInput, '\n', '\n\t');
    
    % Replace placeholder with user code
    contentVirtualCode = regexprep(contentVirtualCode, ...
        '//\*\*\*USER DEFINED CODE\*\*\*//', contentInput);
    
    % Write modified content back to virtualCode.h
    fid = fopen('./vMCU/virtualCode.h', 'w');
    fwrite(fid, contentVirtualCode, 'char');
    fclose(fid);
    
    fprintf('\nCode conversion complete.\n');
    fprintf('Running the following command in Matlab to compile the code:\n\n');
    fprintf('\t\tmex vMCU_sfunction.cpp vMCU/virtualControler.cpp vMCU/codeWrapper.cpp vMCU/virtualCode.cpp\n\n');
    
    mex vMCU_sfunction.cpp vMCU/virtualControler.cpp vMCU/codeWrapper.cpp vMCU/virtualCode.cpp
end