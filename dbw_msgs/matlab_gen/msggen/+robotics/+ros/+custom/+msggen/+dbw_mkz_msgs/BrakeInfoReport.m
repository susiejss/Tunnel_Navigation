classdef BrakeInfoReport < robotics.ros.Message
    %BrakeInfoReport MATLAB implementation of dbw_mkz_msgs/BrakeInfoReport
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2017 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'dbw_mkz_msgs/BrakeInfoReport' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'fc88af128b5b3213ea25ab325a9b3bbb' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        DbwMkzMsgsHillStartAssistClass = robotics.ros.msg.internal.MessageFactory.getClassForType('dbw_mkz_msgs/HillStartAssist') % Dispatch to MATLAB class for message type dbw_mkz_msgs/HillStartAssist
        DbwMkzMsgsParkingBrakeClass = robotics.ros.msg.internal.MessageFactory.getClassForType('dbw_mkz_msgs/ParkingBrake') % Dispatch to MATLAB class for message type dbw_mkz_msgs/ParkingBrake
        StdMsgsHeaderClass = robotics.ros.msg.internal.MessageFactory.getClassForType('std_msgs/Header') % Dispatch to MATLAB class for message type std_msgs/Header
    end
    
    properties (Dependent)
        Header
        BrakeTorqueRequest
        BrakeTorqueActual
        WheelTorqueActual
        AccelOverGround
        Hsa
        AbsActive
        AbsEnabled
        StabActive
        StabEnabled
        TracActive
        TracEnabled
        ParkingBrake
        Stationary
    end
    
    properties (Access = protected)
        Cache = struct('Header', [], 'Hsa', [], 'ParkingBrake', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'AbsActive', 'AbsEnabled', 'AccelOverGround', 'BrakeTorqueActual', 'BrakeTorqueRequest', 'Header', 'Hsa', 'ParkingBrake', 'StabActive', 'StabEnabled', 'Stationary', 'TracActive', 'TracEnabled', 'WheelTorqueActual'} % List of non-constant message properties
        ROSPropertyList = {'abs_active', 'abs_enabled', 'accel_over_ground', 'brake_torque_actual', 'brake_torque_request', 'header', 'hsa', 'parking_brake', 'stab_active', 'stab_enabled', 'stationary', 'trac_active', 'trac_enabled', 'wheel_torque_actual'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = BrakeInfoReport(msg)
            %BrakeInfoReport Construct the message object BrakeInfoReport
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
        
        function header = get.Header(obj)
            %get.Header Get the value for property Header
            if isempty(obj.Cache.Header)
                obj.Cache.Header = feval(obj.StdMsgsHeaderClass, obj.JavaMessage.getHeader);
            end
            header = obj.Cache.Header;
        end
        
        function set.Header(obj, header)
            %set.Header Set the value for property Header
            validateattributes(header, {obj.StdMsgsHeaderClass}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'Header');
            
            obj.JavaMessage.setHeader(header.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Header)
                obj.Cache.Header.setJavaObject(header.getJavaObject);
            end
        end
        
        function braketorquerequest = get.BrakeTorqueRequest(obj)
            %get.BrakeTorqueRequest Get the value for property BrakeTorqueRequest
            braketorquerequest = single(obj.JavaMessage.getBrakeTorqueRequest);
        end
        
        function set.BrakeTorqueRequest(obj, braketorquerequest)
            %set.BrakeTorqueRequest Set the value for property BrakeTorqueRequest
            validateattributes(braketorquerequest, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'BrakeTorqueRequest');
            
            obj.JavaMessage.setBrakeTorqueRequest(braketorquerequest);
        end
        
        function braketorqueactual = get.BrakeTorqueActual(obj)
            %get.BrakeTorqueActual Get the value for property BrakeTorqueActual
            braketorqueactual = single(obj.JavaMessage.getBrakeTorqueActual);
        end
        
        function set.BrakeTorqueActual(obj, braketorqueactual)
            %set.BrakeTorqueActual Set the value for property BrakeTorqueActual
            validateattributes(braketorqueactual, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'BrakeTorqueActual');
            
            obj.JavaMessage.setBrakeTorqueActual(braketorqueactual);
        end
        
        function wheeltorqueactual = get.WheelTorqueActual(obj)
            %get.WheelTorqueActual Get the value for property WheelTorqueActual
            wheeltorqueactual = single(obj.JavaMessage.getWheelTorqueActual);
        end
        
        function set.WheelTorqueActual(obj, wheeltorqueactual)
            %set.WheelTorqueActual Set the value for property WheelTorqueActual
            validateattributes(wheeltorqueactual, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'WheelTorqueActual');
            
            obj.JavaMessage.setWheelTorqueActual(wheeltorqueactual);
        end
        
        function acceloverground = get.AccelOverGround(obj)
            %get.AccelOverGround Get the value for property AccelOverGround
            acceloverground = single(obj.JavaMessage.getAccelOverGround);
        end
        
        function set.AccelOverGround(obj, acceloverground)
            %set.AccelOverGround Set the value for property AccelOverGround
            validateattributes(acceloverground, {'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'AccelOverGround');
            
            obj.JavaMessage.setAccelOverGround(acceloverground);
        end
        
        function hsa = get.Hsa(obj)
            %get.Hsa Get the value for property Hsa
            if isempty(obj.Cache.Hsa)
                obj.Cache.Hsa = feval(obj.DbwMkzMsgsHillStartAssistClass, obj.JavaMessage.getHsa);
            end
            hsa = obj.Cache.Hsa;
        end
        
        function set.Hsa(obj, hsa)
            %set.Hsa Set the value for property Hsa
            validateattributes(hsa, {obj.DbwMkzMsgsHillStartAssistClass}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'Hsa');
            
            obj.JavaMessage.setHsa(hsa.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Hsa)
                obj.Cache.Hsa.setJavaObject(hsa.getJavaObject);
            end
        end
        
        function absactive = get.AbsActive(obj)
            %get.AbsActive Get the value for property AbsActive
            absactive = logical(obj.JavaMessage.getAbsActive);
        end
        
        function set.AbsActive(obj, absactive)
            %set.AbsActive Set the value for property AbsActive
            validateattributes(absactive, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'AbsActive');
            
            obj.JavaMessage.setAbsActive(absactive);
        end
        
        function absenabled = get.AbsEnabled(obj)
            %get.AbsEnabled Get the value for property AbsEnabled
            absenabled = logical(obj.JavaMessage.getAbsEnabled);
        end
        
        function set.AbsEnabled(obj, absenabled)
            %set.AbsEnabled Set the value for property AbsEnabled
            validateattributes(absenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'AbsEnabled');
            
            obj.JavaMessage.setAbsEnabled(absenabled);
        end
        
        function stabactive = get.StabActive(obj)
            %get.StabActive Get the value for property StabActive
            stabactive = logical(obj.JavaMessage.getStabActive);
        end
        
        function set.StabActive(obj, stabactive)
            %set.StabActive Set the value for property StabActive
            validateattributes(stabactive, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'StabActive');
            
            obj.JavaMessage.setStabActive(stabactive);
        end
        
        function stabenabled = get.StabEnabled(obj)
            %get.StabEnabled Get the value for property StabEnabled
            stabenabled = logical(obj.JavaMessage.getStabEnabled);
        end
        
        function set.StabEnabled(obj, stabenabled)
            %set.StabEnabled Set the value for property StabEnabled
            validateattributes(stabenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'StabEnabled');
            
            obj.JavaMessage.setStabEnabled(stabenabled);
        end
        
        function tracactive = get.TracActive(obj)
            %get.TracActive Get the value for property TracActive
            tracactive = logical(obj.JavaMessage.getTracActive);
        end
        
        function set.TracActive(obj, tracactive)
            %set.TracActive Set the value for property TracActive
            validateattributes(tracactive, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'TracActive');
            
            obj.JavaMessage.setTracActive(tracactive);
        end
        
        function tracenabled = get.TracEnabled(obj)
            %get.TracEnabled Get the value for property TracEnabled
            tracenabled = logical(obj.JavaMessage.getTracEnabled);
        end
        
        function set.TracEnabled(obj, tracenabled)
            %set.TracEnabled Set the value for property TracEnabled
            validateattributes(tracenabled, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'TracEnabled');
            
            obj.JavaMessage.setTracEnabled(tracenabled);
        end
        
        function parkingbrake = get.ParkingBrake(obj)
            %get.ParkingBrake Get the value for property ParkingBrake
            if isempty(obj.Cache.ParkingBrake)
                obj.Cache.ParkingBrake = feval(obj.DbwMkzMsgsParkingBrakeClass, obj.JavaMessage.getParkingBrake);
            end
            parkingbrake = obj.Cache.ParkingBrake;
        end
        
        function set.ParkingBrake(obj, parkingbrake)
            %set.ParkingBrake Set the value for property ParkingBrake
            validateattributes(parkingbrake, {obj.DbwMkzMsgsParkingBrakeClass}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'ParkingBrake');
            
            obj.JavaMessage.setParkingBrake(parkingbrake.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.ParkingBrake)
                obj.Cache.ParkingBrake.setJavaObject(parkingbrake.getJavaObject);
            end
        end
        
        function stationary = get.Stationary(obj)
            %get.Stationary Get the value for property Stationary
            stationary = logical(obj.JavaMessage.getStationary);
        end
        
        function set.Stationary(obj, stationary)
            %set.Stationary Set the value for property Stationary
            validateattributes(stationary, {'logical', 'numeric'}, {'nonempty', 'scalar'}, 'BrakeInfoReport', 'Stationary');
            
            obj.JavaMessage.setStationary(stationary);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Header = [];
            obj.Cache.Hsa = [];
            obj.Cache.ParkingBrake = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.BrakeTorqueRequest = obj.BrakeTorqueRequest;
            cpObj.BrakeTorqueActual = obj.BrakeTorqueActual;
            cpObj.WheelTorqueActual = obj.WheelTorqueActual;
            cpObj.AccelOverGround = obj.AccelOverGround;
            cpObj.AbsActive = obj.AbsActive;
            cpObj.AbsEnabled = obj.AbsEnabled;
            cpObj.StabActive = obj.StabActive;
            cpObj.StabEnabled = obj.StabEnabled;
            cpObj.TracActive = obj.TracActive;
            cpObj.TracEnabled = obj.TracEnabled;
            cpObj.Stationary = obj.Stationary;
            
            % Recursively copy compound properties
            cpObj.Header = copy(obj.Header);
            cpObj.Hsa = copy(obj.Hsa);
            cpObj.ParkingBrake = copy(obj.ParkingBrake);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.BrakeTorqueRequest = strObj.BrakeTorqueRequest;
            obj.BrakeTorqueActual = strObj.BrakeTorqueActual;
            obj.WheelTorqueActual = strObj.WheelTorqueActual;
            obj.AccelOverGround = strObj.AccelOverGround;
            obj.AbsActive = strObj.AbsActive;
            obj.AbsEnabled = strObj.AbsEnabled;
            obj.StabActive = strObj.StabActive;
            obj.StabEnabled = strObj.StabEnabled;
            obj.TracActive = strObj.TracActive;
            obj.TracEnabled = strObj.TracEnabled;
            obj.Stationary = strObj.Stationary;
            obj.Header = feval([obj.StdMsgsHeaderClass '.loadobj'], strObj.Header);
            obj.Hsa = feval([obj.DbwMkzMsgsHillStartAssistClass '.loadobj'], strObj.Hsa);
            obj.ParkingBrake = feval([obj.DbwMkzMsgsParkingBrakeClass '.loadobj'], strObj.ParkingBrake);
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
            
            strObj.BrakeTorqueRequest = obj.BrakeTorqueRequest;
            strObj.BrakeTorqueActual = obj.BrakeTorqueActual;
            strObj.WheelTorqueActual = obj.WheelTorqueActual;
            strObj.AccelOverGround = obj.AccelOverGround;
            strObj.AbsActive = obj.AbsActive;
            strObj.AbsEnabled = obj.AbsEnabled;
            strObj.StabActive = obj.StabActive;
            strObj.StabEnabled = obj.StabEnabled;
            strObj.TracActive = obj.TracActive;
            strObj.TracEnabled = obj.TracEnabled;
            strObj.Stationary = obj.Stationary;
            strObj.Header = saveobj(obj.Header);
            strObj.Hsa = saveobj(obj.Hsa);
            strObj.ParkingBrake = saveobj(obj.ParkingBrake);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.dbw_mkz_msgs.BrakeInfoReport.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.dbw_mkz_msgs.BrakeInfoReport;
            obj.reload(strObj);
        end
    end
end
