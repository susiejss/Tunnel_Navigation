classdef GearCmd < robotics.ros.Message
    %GearCmd MATLAB implementation of dbw_mkz_msgs/GearCmd
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'dbw_mkz_msgs/GearCmd' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'e4d2b0484c21e028e30e3c34f7f76ad3' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        DbwMkzMsgsGearClass = robotics.ros.msg.internal.MessageFactory.getClassForType('dbw_mkz_msgs/Gear') % Dispatch to MATLAB class for message type dbw_mkz_msgs/Gear
    end
    
    properties (Dependent)
        Cmd
    end
    
    properties (Access = protected)
        Cache = struct('Cmd', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Cmd'} % List of non-constant message properties
        ROSPropertyList = {'cmd'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = GearCmd(msg)
            %GearCmd Construct the message object GearCmd
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function cmd = get.Cmd(obj)
            %get.Cmd Get the value for property Cmd
            if isempty(obj.Cache.Cmd)
                obj.Cache.Cmd = feval(obj.DbwMkzMsgsGearClass, obj.JavaMessage.getCmd);
            end
            cmd = obj.Cache.Cmd;
        end
        
        function set.Cmd(obj, cmd)
            %set.Cmd Set the value for property Cmd
            validateattributes(cmd, {obj.DbwMkzMsgsGearClass}, {'nonempty', 'scalar'}, 'GearCmd', 'Cmd');
            
            obj.JavaMessage.setCmd(cmd.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Cmd)
                obj.Cache.Cmd.setJavaObject(cmd.getJavaObject);
            end
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Cmd = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Recursively copy compound properties
            cpObj.Cmd = copy(obj.Cmd);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Cmd = feval([obj.DbwMkzMsgsGearClass '.loadobj'], strObj.Cmd);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Cmd = saveobj(obj.Cmd);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.dbw_mkz_msgs.GearCmd.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.dbw_mkz_msgs.GearCmd;
            obj.reload(strObj);
        end
    end
end
