classdef State < dynamicprops & matlab.mixin.SetGet
    % State A simple object for storing states
    % 
    % Usage
    %   state = State(property1, property2)
    %   state = State(property1, value1)
    %   state = State(property1, value1, property2)
    %
    % Arguments
    %   property = name of a property to assign to the state; string
    %   value    = initial value to assign to a property
    %              note that any `value` must follow the `property`
    %              that it is targeting. The `value` argument 
    %              is optional. Must be of non-string type.
    %
    % Examples
    %   bikeshare = State("olin", 10, "wellesley", 20, "babson");
    %   bikeshare.babson = 5;
    %
    methods
        function obj = State(varargin)
            % Create object based on base class
            obj = obj@dynamicprops();
            
            % Add properties to State instance
            last_param = [];
            if nargin > 0
                for i = 1 : nargin
                    % TODO: Assert varargin{i} is string
                    if isa(varargin{i}, "string")
                        % Add property
                        addprop(obj, varargin{i});
                        last_param = varargin{i};
                    elseif ~isempty(last_param)
                        obj.set(last_param, varargin{i});
                    else
                        error("First argument must be a string");
                    end
                end
            end
        end
    end
end

