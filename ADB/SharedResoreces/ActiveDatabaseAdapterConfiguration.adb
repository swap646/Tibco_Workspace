<?xml version="1.0" encoding="UTF-8"?>
<Repository:repository xmlns:Repository="http://www.tibco.com/xmlns/repo/types/2002" xmlns:AESDK="http://www.tibco.com/xmlns/aemeta/adapter/2002" xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <ADB:adapter xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" name="ActiveDatabaseAdapterConfiguration">
        <AESDK:instanceId>ActiveDatabaseAdapterConfiguration</AESDK:instanceId>
        <AESDK:startup>
            <AESDK:defaultStartup>active</AESDK:defaultStartup>
            <AESDK:banner>true</AESDK:banner>
            <AESDK:hasStdMicroAgent>true</AESDK:hasStdMicroAgent>
            <AESDK:stdMicroAgentName>COM.TIBCO.ADAPTER.adb.%%Deployment%%.%%InstanceId%%</AESDK:stdMicroAgentName>
            <AESDK:stdMicroAgentTimeout>10000</AESDK:stdMicroAgentTimeout>
            <AESDK:hasClassMicroAgent>%%HawkEnabled%%</AESDK:hasClassMicroAgent>
            <AESDK:classMicroAgentTimeout>10000</AESDK:classMicroAgentTimeout>
            <AESDK:classMicroAgentName>COM.TIBCO.adb.%%Deployment%%.%%InstanceId%%</AESDK:classMicroAgentName>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBHawkDefault</AESDK:name>
            </AESDK:startComponent>
            <AESDK:defaultMicroAgentSession>ADBHawkDefault</AESDK:defaultMicroAgentSession>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>JMSTopic</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>ADBAgentJmsSession</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>Account_ADBPublisher</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>Account_ADBSubscriber</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>Order_ADBPublisher</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>Order_ADBSubscriber</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>PatientADBPublisher</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>PatientADBSubscriber</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>DeptADBPublisher</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>DeptADBSubscriber</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CustADBPublisher</AESDK:name>
            </AESDK:startComponent>
            <AESDK:startComponent>
                <AESDK:state>active</AESDK:state>
                <AESDK:name>CustADBSubscriber</AESDK:name>
            </AESDK:startComponent>
        </AESDK:startup>
        <AESDK:deployment>
            <AESDK:advisories xsi:nil="true"/>
            <AESDK:sessions>
                <AESDK:messaging>
                    <AESDK:rvSession isRef="true">#rvSession.ADBHawkDefault</AESDK:rvSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.JMSTopic</AESDK:jmsSession>
                    <AESDK:jmsSession isRef="true">#jmsSession.ADBAgentJmsSession</AESDK:jmsSession>
                </AESDK:messaging>
            </AESDK:sessions>
            <AESDK:producers>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.Account_ADBPublisher</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.Order_ADBPublisher</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.PatientADBPublisher</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.DeptADBPublisher</AESDK:jmsPublisher>
                <AESDK:jmsPublisher isRef="true">#jmsProducer.CustADBPublisher</AESDK:jmsPublisher>
            </AESDK:producers>
            <AESDK:consumers>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.Account_ADBSubscriber</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.Order_ADBSubscriber</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.PatientADBSubscriber</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.DeptADBSubscriber</AESDK:jmsSubscriber>
                <AESDK:jmsSubscriber isRef="true">#jmsConsumer.CustADBSubscriber</AESDK:jmsSubscriber>
            </AESDK:consumers>
        </AESDK:deployment>
        <AESDK:timers xsi:nil="true"/>
        <AESDK:txControls xsi:nil="true"/>
        <AESDK:reporting>
            <AESDK:fileSink>
                <AESDK:fileName>%%DirTrace%%/%%Deployment%%.%%InstanceId%%.log</AESDK:fileName>
                <AESDK:fileCount>3</AESDK:fileCount>
                <AESDK:fileLimit>30000</AESDK:fileLimit>
                <AESDK:appendMode>true</AESDK:appendMode>
                <AESDK:name>fileSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:fileSink>
            <AESDK:stdioSink>
                <AESDK:ioName>stdout</AESDK:ioName>
                <AESDK:name>stdioSink</AESDK:name>
                <AESDK:role>
                    <AESDK:name>infoRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>debugRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>errorRole</AESDK:name>
                </AESDK:role>
                <AESDK:role>
                    <AESDK:name>warnRole</AESDK:name>
                </AESDK:role>
            </AESDK:stdioSink>
        </AESDK:reporting>
        <AESDK:metadata>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/adbmetadata.aeschema</AESDK:loadUrl>
            <AESDK:loadUrl isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema</AESDK:loadUrl>
        </AESDK:metadata>
        <ADB:hawk xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:help>TIB/Adapter for ActiveDatabase MicroAgent</ADB:help>
            <ADB:microAgentName>COM.TIBCO.adb.custom.%%Deployment%%.%%InstanceId%%</ADB:microAgentName>
            <ADB:sessionName isRef="true">#rvSession.ADBHawkDefault</ADB:sessionName>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Sets the debug level for the agent (possible values 0-3)</ADB:help>
                <ADB:name>setDebugLevel</ADB:name>
                <ADB:type>ACTION</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>The debug level</ADB:help>
                    <ADB:name>DebugLevel</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Retrieve configuration information for the agent.</ADB:help>
                <ADB:name>showConfiguration</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:outputParameter>
                    <ADB:help>Verbose flag information</ADB:help>
                    <ADB:name>VerboseInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Debug level information</ADB:help>
                    <ADB:name>DebugLevelInfo</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Terminates the agent</ADB:help>
                <ADB:name>terminateADBagent</ADB:name>
                <ADB:type>ACTION</ADB:type>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Toggles the value of the verbose flag.</ADB:help>
                <ADB:name>toggleVerboseFlag</ADB:name>
                <ADB:type>ACTION</ADB:type>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Gets number of messages waiting in the event queue.</ADB:help>
                <ADB:name>getEventQueueSize</ADB:name>
                <ADB:type>ACTION_INFO</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>Specify subscriber or request/reply listener</ADB:help>
                    <ADB:name>Category</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Subscriber,RequestReply</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The session which the subscriber or request/reply blongs to</ADB:help>
                    <ADB:name>SessionName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of events in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of events in queue (0 = unlimited)</ADB:help>
                    <ADB:name>QueueLimit</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by the adapter instance</ADB:help>
                <ADB:name>getActivityStatistics</ADB:name>
                <ADB:type>ACTION_INFO</ADB:type>
                <ADB:index>Name</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Get statistics by either service or operation</ADB:help>
                    <ADB:name>Get Subtotal By</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>Service,Operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Service Name</ADB:help>
                    <ADB:name>Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about the data handled by a particular adapter service</ADB:help>
                <ADB:name>getActivityStatisticsByService</ADB:name>
                <ADB:type>ACTION_INFO</ADB:type>
                <ADB:index>Operation</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of which service to get the statistic for</ADB:help>
                    <ADB:name>Service Name</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>The type of operation this service provides</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the top level schema processed by this service, or the subject of a request/response service</ADB:help>
                    <ADB:name>SchemaName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about one operation</ADB:help>
                <ADB:name>getActivityStatisticsByOperation</ADB:name>
                <ADB:type>ACTION_INFO</ADB:type>
                <ADB:index>ServiceName</ADB:index>
                <ADB:inputParameter>
                    <ADB:help>Name of the operation</ADB:help>
                    <ADB:name>Operation</ADB:name>
                    <ADB:type>string</ADB:type>
                    <ADB:legalValueChoices>fetch,poll,insert,update,delete,request/reply,standard_operation,custom_operation</ADB:legalValueChoices>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Name of the Service</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects processed</ADB:help>
                    <ADB:name>Total</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects successfully processed</ADB:help>
                    <ADB:name>Success</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of objects that caused an error during processing</ADB:help>
                    <ADB:name>Failure</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get operation counts of the current threads</ADB:help>
                <ADB:name>getThreadStatistics</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:index>IndexID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>IndexID of the table</ADB:help>
                    <ADB:name>IndexID</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular thread</ADB:help>
                    <ADB:name>ThreadID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that tells what part of the adapter this thread belongs to</ADB:help>
                    <ADB:name>ThreadType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Description of the tasks this thread processes</ADB:help>
                    <ADB:name>TaskType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Number of tasks processed by this thread</ADB:help>
                    <ADB:name>TaskCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get statistics about current count of elements in any internal queue</ADB:help>
                <ADB:name>getQueueStatistics</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:index>QueueID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular queue</ADB:help>
                    <ADB:name>QueueID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>A type that will match this queue to a thread or connection</ADB:help>
                    <ADB:name>QueueType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current number of elements in the queue</ADB:help>
                    <ADB:name>QueueCount</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Maximum number of elements that can be held in this queue</ADB:help>
                    <ADB:name>MaxQueueSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Return the state and statistics for all the curent connections used by the adapter</ADB:help>
                <ADB:name>getConnectionStatistics</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:index>ConnectionID</ADB:index>
                <ADB:outputParameter>
                    <ADB:help>A unique identification of a particular connection</ADB:help>
                    <ADB:name>ConnectionID</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Describe the purpose of this connection serves to the adapter</ADB:help>
                    <ADB:name>ConnectionType</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Current state of the connection</ADB:help>
                    <ADB:name>State</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of times this connection had been re-established</ADB:help>
                    <ADB:name>NumRetries</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection</ADB:help>
                    <ADB:name>TotalNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
                <ADB:outputParameter>
                    <ADB:help>Total number of operations processed by this connection since the last reconnection</ADB:help>
                    <ADB:name>CurrentNumOperations</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the activity statistics</ADB:help>
                <ADB:name>resetActivityStatistics</ADB:name>
                <ADB:type>ACTION</ADB:type>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the thread statistics</ADB:help>
                <ADB:name>resetThreadStatistics</ADB:name>
                <ADB:type>ACTION</ADB:type>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Reset all the counts for the connection statistics</ADB:help>
                <ADB:name>resetConnectionStatistics</ADB:name>
                <ADB:type>ACTION</ADB:type>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling interval setting</ADB:help>
                <ADB:name>setPollingInterval</ADB:name>
                <ADB:type>ACTION</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
                <ADB:inputParameter>
                    <ADB:help>Publication service name</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling interval setting</ADB:help>
                <ADB:name>getPollingInterval</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>Publication service name</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Polling interval in milliseconds</ADB:help>
                    <ADB:name>PollingInterval</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Set the polling polling batch size setting</ADB:help>
                <ADB:name>setPollingBatchSize</ADB:name>
                <ADB:type>ACTION</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:inputParameter>
                <ADB:inputParameter>
                    <ADB:help>Publication service name</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the current polling batch size setting</ADB:help>
                <ADB:name>getPollingBatchSize</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:inputParameter>
                    <ADB:help>Publication service name</ADB:help>
                    <ADB:name>ServiceName</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:inputParameter>
                <ADB:outputParameter>
                    <ADB:help>Polling batch size</ADB:help>
                    <ADB:name>PollingBatchSize</ADB:name>
                    <ADB:type>integer</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
            <ADB:method xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:help>Get the setting of the perfMon option</ADB:help>
                <ADB:name>getPerfMonSetting</ADB:name>
                <ADB:type>INFO</ADB:type>
                <ADB:outputParameter>
                    <ADB:help>Value of PerfMon option</ADB:help>
                    <ADB:name>Setting</ADB:name>
                    <ADB:type>string</ADB:type>
                </ADB:outputParameter>
            </ADB:method>
        </ADB:hawk>
        <AESDK:designer>
            <AESDK:advancedLogging>false</AESDK:advancedLogging>
            <AESDK:adapterVersion>sdk51</AESDK:adapterVersion>
            <AESDK:timeout>30000</AESDK:timeout>
            <AESDK:savePassword>true</AESDK:savePassword>
            <AESDK:lastDBType>16</AESDK:lastDBType>
            <AESDK:vendor>16</AESDK:vendor>
            <AESDK:convertOracleNumberToString>true</AESDK:convertOracleNumberToString>
            <AESDK:deployOperations>true</AESDK:deployOperations>
            <AESDK:showExpertSettings>false</AESDK:showExpertSettings>
            <AESDK:identifierCase>1</AESDK:identifierCase>
            <AESDK:lockedProperties>
                <AESDK:locked>
                    <AESDK:properties>defaultMicroAgentSession,defaultSession,searchUrl,defaultStartup</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL1</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Metadata URLs/LoadURL</AESDK:resource>
                    <AESDK:properties>name,loadURL</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBAgentJmsSession</AESDK:resource>
                    <AESDK:properties>connectionFactoryType</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic</AESDK:resource>
                    <AESDK:properties>connectionFactoryType,name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBSubscriber</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBPublisher</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBSubscriber</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBSubscriber</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBSubscriber</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBSubscriber</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBPublisher</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBPublisher</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBPublisher</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBPublisher</AESDK:resource>
                    <AESDK:properties>subject,name,deliveryMode,wireFormat,destination</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Advanced/Sessions/ADBHawkDefault</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
                <AESDK:locked>
                    <AESDK:resource>/Adapter Services</AESDK:resource>
                    <AESDK:properties>name</AESDK:properties>
                </AESDK:locked>
            </AESDK:lockedProperties>
            <AESDK:fixedChildren>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Metadata URLs</AESDK:resource>
                    <AESDK:children>LoadURL,LoadURL1</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions</AESDK:resource>
                    <AESDK:children>ADBHawkDefault,JMSTopic</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic</AESDK:resource>
                    <AESDK:children>Account_ADBPublisher,Account_ADBSubscriber,Order_ADBPublisher,Order_ADBSubscriber,PatientADBPublisher,PatientADBSubscriber,DeptADBPublisher,DeptADBSubscriber,CustADBPublisher,CustADBSubscriber</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBSubscriber</AESDK:resource>
                    <AESDK:children>CUSTOMER</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBPublisher</AESDK:resource>
                    <AESDK:children>P_CUSTOMER</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBSubscriber</AESDK:resource>
                    <AESDK:children>DEPT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBSubscriber</AESDK:resource>
                    <AESDK:children>PATIENT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBSubscriber</AESDK:resource>
                    <AESDK:children>MENUORDER</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBSubscriber</AESDK:resource>
                    <AESDK:children>ACCOUNT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBPublisher</AESDK:resource>
                    <AESDK:children>P_DEPT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBPublisher</AESDK:resource>
                    <AESDK:children>P_PATIENT</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBPublisher</AESDK:resource>
                    <AESDK:children>P_MENUORDER</AESDK:children>
                </AESDK:fixed>
                <AESDK:fixed>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBPublisher</AESDK:resource>
                    <AESDK:children>P_ACCOUNT</AESDK:children>
                </AESDK:fixed>
            </AESDK:fixedChildren>
            <AESDK:resourceDescriptions>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBSubscriber</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/CustADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service ADBPublisher.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBSubscriber</AESDK:resource>
                    <AESDK:description>Created for service DeptADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBSubscriber</AESDK:resource>
                    <AESDK:description>Created for service ADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBSubscriber</AESDK:resource>
                    <AESDK:description>Created for service Order_ADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBSubscriber</AESDK:resource>
                    <AESDK:description>Created for service Account_ADBSubscriber.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/DeptADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service DeptADBPublisher.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/PatientADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service ADBPublisher.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Order_ADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service Order_ADBPublisher.</AESDK:description>
                </AESDK:node>
                <AESDK:node>
                    <AESDK:resource>/Advanced/Sessions/JMSTopic/Account_ADBPublisher</AESDK:resource>
                    <AESDK:description>Created for service Account_ADBPublisher.</AESDK:description>
                </AESDK:node>
            </AESDK:resourceDescriptions>
            <AESDK:adapterTester>
                <AESDK:exe>C:\tibco\adapter\adadb\7.0\bin\adbagent.exe</AESDK:exe>
                <AESDK:args>--run --propFile</AESDK:args>
                <AESDK:workingDir>C:\ADB+Logs</AESDK:workingDir>
            </AESDK:adapterTester>
        </AESDK:designer>
        <ADB:designer xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" xsi:nil="true"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:alerter>false</ADB:alerter>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:pollingMethod>Timer</ADB:pollingMethod>
                <ADB:pollingInterval>5000</ADB:pollingInterval>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:pollingCommitForDB2>false</ADB:pollingCommitForDB2>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:name>Account_ADBPublisher</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:publishingTable>P_ACCOUNT</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_ACCOUNT</ADB:classReference>
                <ADB:sourceTable>ACCOUNT</ADB:sourceTable>
                <ADB:columnsToPublish>NO</ADB:columnsToPublish>
                <ADB:columnsToPublish>NAME</ADB:columnsToPublish>
                <ADB:columnsToPublish>AMOUNT</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_ACCOUNT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:messageSubject>%%Domain%%.%%Deployment%%.adb.ActiveDatabaseAdapterConfiguration.Account_ADBPublisher</ADB:messageSubject>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
                <ADB:preRegisteredListeners/>
                <ADB:destination>accont.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.Account_ADBPublisher</ADB:endpointReference>
                <ADB:loopDetection>true</ADB:loopDetection>
            </ADB:publisher>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:subThreads>1</ADB:subThreads>
                <ADB:useSerial>false</ADB:useSerial>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>1</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:batchCommitSize>0</ADB:batchCommitSize>
                <ADB:batchCommitTimeout>10000</ADB:batchCommitTimeout>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:name>Account_ADBSubscriber</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.ACCOUNT</ADB:classReference>
                <ADB:destinationTable>ACCOUNT</ADB:destinationTable>
                <ADB:columnsToSubscribe>NO</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> NAME</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> AMOUNT</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>ACCOUNT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>accont.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.Account_ADBSubscriber</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
            </ADB:subscriber>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:subThreads>1</ADB:subThreads>
                <ADB:useSerial>false</ADB:useSerial>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>1</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:batchCommitSize>0</ADB:batchCommitSize>
                <ADB:batchCommitTimeout>10000</ADB:batchCommitTimeout>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:name>Order_ADBSubscriber</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.MENUORDER</ADB:classReference>
                <ADB:destinationTable>MENUORDER</ADB:destinationTable>
                <ADB:columnsToSubscribe>NO</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> ITEMS</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PRICE</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>MENUORDER</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>Order.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.Order_ADBSubscriber</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
            </ADB:subscriber>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:alerter>false</ADB:alerter>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:pollingMethod>Timer</ADB:pollingMethod>
                <ADB:pollingInterval>5000</ADB:pollingInterval>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:pollingCommitForDB2>false</ADB:pollingCommitForDB2>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:name>Order_ADBPublisher</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:publishingTable>P_MENUORDER</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_MENUORDER</ADB:classReference>
                <ADB:sourceTable>MENUORDER</ADB:sourceTable>
                <ADB:columnsToPublish>NO</ADB:columnsToPublish>
                <ADB:columnsToPublish>ITEMS</ADB:columnsToPublish>
                <ADB:columnsToPublish>PRICE</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_MENUORDER</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>Order.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.Order_ADBPublisher</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
                <ADB:loopDetection>true</ADB:loopDetection>
            </ADB:publisher>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:alerter>false</ADB:alerter>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:pollingMethod>Timer</ADB:pollingMethod>
                <ADB:pollingInterval>5000</ADB:pollingInterval>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:pollingCommitForDB2>false</ADB:pollingCommitForDB2>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:name>PatientADBPublisher</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:publishingTable>P_PATIENT</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_PATIENT</ADB:classReference>
                <ADB:sourceTable>PATIENT</ADB:sourceTable>
                <ADB:columnsToPublish>PATNAME</ADB:columnsToPublish>
                <ADB:columnsToPublish>PATNO</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_PATIENT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>patient.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.PatientADBPublisher</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
                <ADB:loopDetection>true</ADB:loopDetection>
            </ADB:publisher>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:subThreads>1</ADB:subThreads>
                <ADB:useSerial>false</ADB:useSerial>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>1</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:batchCommitSize>0</ADB:batchCommitSize>
                <ADB:batchCommitTimeout>10000</ADB:batchCommitTimeout>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:name>PatientADBSubscriber</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.PATIENT</ADB:classReference>
                <ADB:destinationTable>PATIENT</ADB:destinationTable>
                <ADB:columnsToSubscribe>PATNAME</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> PATNO</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>PATIENT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>patient.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.PatientADBSubscriber</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
            </ADB:subscriber>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:alerter>false</ADB:alerter>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:pollingMethod>Timer</ADB:pollingMethod>
                <ADB:pollingInterval>5000</ADB:pollingInterval>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:pollingCommitForDB2>false</ADB:pollingCommitForDB2>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:name>DeptADBPublisher</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:publishingTable>P_DEPT</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_DEPT</ADB:classReference>
                <ADB:sourceTable>DEPT</ADB:sourceTable>
                <ADB:columnsToPublish>DIV</ADB:columnsToPublish>
                <ADB:columnsToPublish>SECTOR</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_DEPT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>dept.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.DeptADBPublisher</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
                <ADB:loopDetection>true</ADB:loopDetection>
            </ADB:publisher>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:subThreads>1</ADB:subThreads>
                <ADB:useSerial>false</ADB:useSerial>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>1</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:batchCommitSize>0</ADB:batchCommitSize>
                <ADB:batchCommitTimeout>10000</ADB:batchCommitTimeout>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:name>DeptADBSubscriber</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.DEPT</ADB:classReference>
                <ADB:destinationTable>DEPT</ADB:destinationTable>
                <ADB:columnsToSubscribe>DIV</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> SECTOR</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>DEPT</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>dept.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.DeptADBSubscriber</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
            </ADB:subscriber>
            <ADB:publisher xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.publisher">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:storageMode>VALUE</ADB:storageMode>
                <ADB:updateMode>UPSERT</ADB:updateMode>
                <ADB:deliveryMode>2</ADB:deliveryMode>
                <ADB:orderBy>ORDER BY ADB_SEQUENCE</ADB:orderBy>
                <ADB:groupSize>1</ADB:groupSize>
                <ADB:groupMessaging>false</ADB:groupMessaging>
                <ADB:alerter>false</ADB:alerter>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:pollingMethod>Timer</ADB:pollingMethod>
                <ADB:pollingInterval>5000</ADB:pollingInterval>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:pollingCommitForDB2>false</ADB:pollingCommitForDB2>
                <ADB:loadBalancing>false</ADB:loadBalancing>
                <ADB:loadMutexName>MUTEX</ADB:loadMutexName>
                <ADB:name>CustADBPublisher</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:publishingTable>P_CUSTOMER</ADB:publishingTable>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_CUSTOMER</ADB:classReference>
                <ADB:sourceTable>CUSTOMER</ADB:sourceTable>
                <ADB:columnsToPublish>NAME</ADB:columnsToPublish>
                <ADB:columnsToPublish>MOBILE</ADB:columnsToPublish>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>P_CUSTOMER</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:messageSubject>%%Domain%%.%%Deployment%%.adb.ActiveDatabaseAdapterConfiguration.ADBPublisher</ADB:messageSubject>
                <ADB:repoEndpointType>endpoint.JMSPublisher</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
                <ADB:preRegisteredListeners/>
                <ADB:destination>cust.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsProducer.CustADBPublisher</ADB:endpointReference>
                <ADB:loopDetection>true</ADB:loopDetection>
            </ADB:publisher>
            <ADB:subscriber xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002" resourceType="adb.table.subscriber">
                <ADB:deployed>true</ADB:deployed>
                <ADB:transportType>jms</ADB:transportType>
                <ADB:qualityOfService>ae.sessions.rvcmsession</ADB:qualityOfService>
                <ADB:wireFormat>aeXml</ADB:wireFormat>
                <ADB:isAdorapps>false</ADB:isAdorapps>
                <ADB:allowKeys>true</ADB:allowKeys>
                <ADB:subThreads>1</ADB:subThreads>
                <ADB:useSerial>false</ADB:useSerial>
                <ADB:useSeperateThread>false</ADB:useSeperateThread>
                <ADB:opaqueTable>false</ADB:opaqueTable>
                <ADB:replySenderQualityOfService>Persistent</ADB:replySenderQualityOfService>
                <ADB:deliveryMode>1</ADB:deliveryMode>
                <ADB:serviceBulkInsertSize>1</ADB:serviceBulkInsertSize>
                <ADB:batchCommitSize>0</ADB:batchCommitSize>
                <ADB:batchCommitTimeout>10000</ADB:batchCommitTimeout>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:name>CustADBSubscriber</ADB:name>
                <ADB:connectionFactoryType>2</ADB:connectionFactoryType>
                <ADB:classReference isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.CUSTOMER</ADB:classReference>
                <ADB:destinationTable>CUSTOMER</ADB:destinationTable>
                <ADB:columnsToSubscribe>NAME</ADB:columnsToSubscribe>
                <ADB:columnsToSubscribe> MOBILE</ADB:columnsToSubscribe>
                <ADB:schemas xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                    <ADB:table xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                        <ADB:name>CUSTOMER</ADB:name>
                    </ADB:table>
                </ADB:schemas>
                <ADB:destination>cust.topic</ADB:destination>
                <ADB:endpointReference isRef="true">#jmsConsumer.CustADBSubscriber</ADB:endpointReference>
                <ADB:repoEndpointType>endpoint.JMSSubscriber</ADB:repoEndpointType>
                <ADB:sessionReference>/SharedResoreces/ActiveDatabaseAdapterConfiguration.adb#jmsSession.JMSTopic</ADB:sessionReference>
            </ADB:subscriber>
        </ADB:operations>
        <ADB:activedb xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
            <ADB:defaultDataSource xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:name/>
                <ADB:user>tibco</ADB:user>
                <ADB:driver>tibcosoftwareinc.jdbc.oracle.OracleDriver</ADB:driver>
                <ADB:url>jdbc:tibcosoftwareinc:oracle://localhost:1521;SID=ORCL</ADB:url>
                <ADB:disConnCode>3111;3112;3113;3114</ADB:disConnCode>
                <ADB:runtimeUser>tibco</ADB:runtimeUser>
                <ADB:runtimeUrl>jdbc:tibcosoftwareinc:oracle://localhost:1521;SID=ORCL</ADB:runtimeUrl>
                <ADB:runtimeDriver>tibcosoftwareinc.jdbc.oracle.OracleDriver</ADB:runtimeDriver>
                <ADB:dbmsType>ORACLE</ADB:dbmsType>
                <ADB:password>#!zAv08hvlan4Awc8JhbpbYiKGJgYvyt7O</ADB:password>
                <ADB:runtimePassword>#!iH1tc3lBzM+eJvALXaqnkREwDHlJTSH3</ADB:runtimePassword>
            </ADB:defaultDataSource>
            <ADB:threadCount xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:commInterfaces>1</ADB:commInterfaces>
                <ADB:commRRInterfaces>1</ADB:commRRInterfaces>
                <ADB:dbInterfaces>1</ADB:dbInterfaces>
                <ADB:dbRRInterfaces>1</ADB:dbRRInterfaces>
                <ADB:pubManagers>1</ADB:pubManagers>
                <ADB:subManagers>1</ADB:subManagers>
            </ADB:threadCount>
            <ADB:agentOptions xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002">
                <ADB:debug>2</ADB:debug>
                <ADB:verbose>on</ADB:verbose>
                <ADB:payload>false</ADB:payload>
                <ADB:useTraceFile/>
                <ADB:publishChildData>on</ADB:publishChildData>
                <ADB:poll>5000</ADB:poll>
                <ADB:maxRows>0</ADB:maxRows>
                <ADB:usePollingBatchSize>false</ADB:usePollingBatchSize>
                <ADB:batchPubStatusUpdates>off</ADB:batchPubStatusUpdates>
                <ADB:pubBatchConfirmSize>0</ADB:pubBatchConfirmSize>
                <ADB:pubBatchConfirmTimeout>10000</ADB:pubBatchConfirmTimeout>
                <ADB:subBatchCommitSize>0</ADB:subBatchCommitSize>
                <ADB:subBatchCommitTimeout>10000</ADB:subBatchCommitTimeout>
                <ADB:subBulkInsertSize>1</ADB:subBulkInsertSize>
                <ADB:rvMaxQueueSize>0</ADB:rvMaxQueueSize>
                <ADB:useExceptTable>on</ADB:useExceptTable>
                <ADB:rebuildAfterException>off</ADB:rebuildAfterException>
                <ADB:jmsDestinationPrefix>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%</ADB:jmsDestinationPrefix>
                <ADB:retryTotal>3</ADB:retryTotal>
                <ADB:sleepBetweenRetries>10000</ADB:sleepBetweenRetries>
                <ADB:retryBeforeSuspend>1</ADB:retryBeforeSuspend>
                <ADB:stopOnRetryFail>RETRY_FAIL_LAST_SERVICE</ADB:stopOnRetryFail>
                <ADB:useDesignTimeConnSetting>true</ADB:useDesignTimeConnSetting>
                <ADB:rpcMaxRows>0</ADB:rpcMaxRows>
                <ADB:scriptFileName>%%ADBScriptFileDir%%\ActiveDatabaseAdapterConfiguration.sql</ADB:scriptFileName>
                <ADB:termSubject>%%Domain%%.%%Deployment%%.adb.%%InstanceId%%.exit</ADB:termSubject>
            </ADB:agentOptions>
        </ADB:activedb>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
        <ADB:operations xmlns:ADB="http://www.tibco.com/xmlns/adapter/ADB/2002"/>
    </ADB:adapter>
    <AEService:rvSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.RV" name="ADBHawkDefault">
        <AEService:daemon>%%TIBHawkDaemon%%</AEService:daemon>
        <AEService:service>%%TIBHawkService%%</AEService:service>
        <AEService:network>%%TIBHawkNetwork%%</AEService:network>
        <AEService:mode>asynchronous</AEService:mode>
    </AEService:rvSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="JMSTopic">
        <AEService:clientId/>
        <AEService:emsServerUserName/>
        <AEService:emsServerPassword/>
        <AEService:connectionFactorySslPassword/>
        <AEService:connFactoryType>2</AEService:connFactoryType>
        <AEService:connFactoryName>TopicConnectionFactory</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername/>
        <AEService:connPassword/>
    </AEService:jmsSession>
    <AEService:jmsSession xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="session.JMS" name="ADBAgentJmsSession">
        <AEService:clientId/>
        <AEService:emsServerUserName/>
        <AEService:emsServerPassword/>
        <AEService:connectionFactorySslPassword/>
        <AEService:connFactoryType>2</AEService:connFactoryType>
        <AEService:connFactoryName>TopicConnectionFactory</AEService:connFactoryName>
        <AEService:jndiLookups>false</AEService:jndiLookups>
        <AEService:providerUrl>%%JmsProviderUrl%%</AEService:providerUrl>
        <AEService:providerCtxFactory>com.tibco.tibjms.naming.TibjmsInitialContextFactory</AEService:providerCtxFactory>
        <AEService:connUsername/>
        <AEService:connPassword/>
    </AEService:jmsSession>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="Account_ADBPublisher">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>accont.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_ACCOUNT</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="Order_ADBPublisher">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>Order.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_MENUORDER</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="PatientADBPublisher">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>patient.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_PATIENT</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="DeptADBPublisher">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>dept.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_DEPT</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="Account_ADBSubscriber">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:deliveryMode2>1</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName/>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>accont.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.ACCOUNT</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="Order_ADBSubscriber">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:deliveryMode2>1</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName/>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>Order.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.MENUORDER</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="PatientADBSubscriber">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:deliveryMode2>1</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName/>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>patient.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.PATIENT</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="DeptADBSubscriber">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:deliveryMode2>1</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName/>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>dept.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.DEPT</AEService:class>
    </AEService:jmsConsumer>
    <AEService:jmsProducer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSPublisher" name="CustADBPublisher">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:destination>cust.topic</AEService:destination>
        <AEService:deliveryMode>2</AEService:deliveryMode>
        <AEService:deliveryMode2>2</AEService:deliveryMode2>
        <AEService:replyDestination/>
        <AEService:messageTimeout>0</AEService:messageTimeout>
        <AEService:messagePriority>4</AEService:messagePriority>
        <AEService:isCompressed>false</AEService:isCompressed>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.P_CUSTOMER</AEService:class>
    </AEService:jmsProducer>
    <AEService:jmsConsumer xmlns:AEService="http://www.tibco.com/xmlns/aemeta/services/2002" objectType="endpoint.JMSSubscriber" name="CustADBSubscriber">
        <AEService:wireFormat>aeXml</AEService:wireFormat>
        <AEService:deliveryMode>1</AEService:deliveryMode>
        <AEService:deliveryMode2>1</AEService:deliveryMode2>
        <AEService:autoConfirm>true</AEService:autoConfirm>
        <AEService:durableName/>
        <AEService:messageSelector/>
        <AEService:listenTimeout>0</AEService:listenTimeout>
        <AEService:session isRef="true">#jmsSession.JMSTopic</AEService:session>
        <AEService:destination>cust.topic</AEService:destination>
        <AEService:class isRef="true">/AESchemas/ae/ADB/ActiveDatabaseAdapterConfiguration.aeschema#class.CUSTOMER</AEService:class>
    </AEService:jmsConsumer>
</Repository:repository>