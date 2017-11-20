[33mcommit d7f9bee9e5eeed2fb3163273d9f0c82d961c7576[m[33m ([m[1;36mHEAD -> [m[1;32mmaster[m[33m, [m[1;31morigin/master[m[33m)[m
Author: Servilat <bugatti1701@gmail.com>
Date:   Sun Nov 19 13:04:48 2017 +0300

    'initial'

[1mdiff --git a/.idea/misc.xml b/.idea/misc.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..0548357[m
[1m--- /dev/null[m
[1m+++ b/.idea/misc.xml[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ProjectRootManager" version="2" languageLevel="JDK_1_8" default="true" project-jdk-name="1.8" project-jdk-type="JavaSDK">[m
[32m+[m[32m    <output url="file://$PROJECT_DIR$/out" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/modules.xml b/.idea/modules.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..f459e79[m
[1m--- /dev/null[m
[1m+++ b/.idea/modules.xml[m
[36m@@ -0,0 +1,8 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ProjectModuleManager">[m
[32m+[m[32m    <modules>[m
[32m+[m[32m      <module fileurl="file://$PROJECT_DIR$/Chat.iml" filepath="$PROJECT_DIR$/Chat.iml" />[m
[32m+[m[32m    </modules>[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/vcs.xml b/.idea/vcs.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..b1e7267[m
[1m--- /dev/null[m
[1m+++ b/.idea/vcs.xml[m
[36m@@ -0,0 +1,6 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="VcsDirectoryMappings">[m
[32m+[m[32m    <mapping directory="$PROJECT_DIR$/Chat" vcs="Git" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/.idea/workspace.xml b/.idea/workspace.xml[m
[1mnew file mode 100644[m
[1mindex 0000000..ac9b04c[m
[1m--- /dev/null[m
[1m+++ b/.idea/workspace.xml[m
[36m@@ -0,0 +1,693 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<project version="4">[m
[32m+[m[32m  <component name="ChangeListManager">[m
[32m+[m[32m    <list default="true" id="18ef6d63-ea13-4fae-ab34-1cc7a5b0f04a" name="Default" comment="" />[m
[32m+[m[32m    <ignored path="$PROJECT_DIR$/out/" />[m
[32m+[m[32m    <option name="EXCLUDED_CONVERTED_TO_IGNORED" value="true" />[m
[32m+[m[32m    <option name="TRACKING_ENABLED" value="true" />[m
[32m+[m[32m    <option name="SHOW_DIALOG" value="false" />[m
[32m+[m[32m    <option name="HIGHLIGHT_CONFLICTS" value="true" />[m
[32m+[m[32m    <option name="HIGHLIGHT_NON_ACTIVE_CHANGELIST" value="false" />[m
[32m+[m[32m    <option name="LAST_RESOLUTION" value="IGNORE" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="FileEditorManager">[m
[32m+[m[32m    <leaf SIDE_TABS_SIZE_LIMIT_KEY="375">[m
[32m+[m[32m      <file leaf-file-name="ClientGUI.java" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state relative-caret-position="42">[m
[32m+[m[32m              <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m              <folding />[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="CommonGUI.java" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state relative-caret-position="42">[m
[32m+[m[32m              <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m              <folding />[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="ServerGUI.java" pinned="false" current-in-tab="true">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/GUI/ServerGUI.java">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state relative-caret-position="546">[m
[32m+[m[32m              <caret line="112" column="23" lean-forward="false" selection-start-line="112" selection-start-column="23" selection-end-line="112" selection-end-column="23" />[m
[32m+[m[32m              <folding>[m
[32m+[m[32m                <element signature="e#0#10640#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#8415#8502#0" expanded="true" />[m
[32m+[m[32m              </folding>[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="Menu.java" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/GUI/Menu.java">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state relative-caret-position="84">[m
[32m+[m[32m              <caret line="4" column="3" lean-forward="false" selection-start-line="4" selection-start-column="3" selection-end-line="4" selection-end-column="3" />[m
[32m+[m[32m              <folding>[m
[32m+[m[32m                <element signature="e#0#6262#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#334#335#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#366#367#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#587#617#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#622#685#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1284#1285#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1353#1354#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1652#1653#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1721#1722#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1922#1923#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#1985#1986#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#4485#4572#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#5942#5943#0" expanded="true" />[m
[32m+[m[32m                <element signature="e#6001#6002#0" expanded="true" />[m
[32m+[m[32m              </folding>[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m      <file leaf-file-name="Chat.iml" pinned="false" current-in-tab="false">[m
[32m+[m[32m        <entry file="file://$PROJECT_DIR$/Chat.iml">[m
[32m+[m[32m          <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m            <state relative-caret-position="0">[m
[32m+[m[32m              <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m              <folding />[m
[32m+[m[32m            </state>[m
[32m+[m[32m          </provider>[m
[32m+[m[32m        </entry>[m
[32m+[m[32m      </file>[m
[32m+[m[32m    </leaf>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="FileTemplateManagerImpl">[m
[32m+[m[32m    <option name="RECENT_TEMPLATES">[m
[32m+[m[32m      <list>[m
[32m+[m[32m        <option value="Interface" />[m
[32m+[m[32m        <option value="Class" />[m
[32m+[m[32m      </list>[m
[32m+[m[32m    </option>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="Git.Settings">[m
[32m+[m[32m    <option name="RECENT_GIT_ROOT_PATH" value="$PROJECT_DIR$/Chat" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="GradleLocalSettings">[m
[32m+[m[32m    <option name="externalProjectsViewState">[m
[32m+[m[32m      <projects_view />[m
[32m+[m[32m    </option>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="IdeDocumentHistory">[m
[32m+[m[32m    <option name="CHANGED_PATHS">[m
[32m+[m[32m      <list>[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/CommonGUI.java" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/ClientGUI.java" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/Main.java" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/MenuGUI.java" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/Menu.java" />[m
[32m+[m[32m        <option value="$PROJECT_DIR$/GUI/ServerGUI.java" />[m
[32m+[m[32m      </list>[m
[32m+[m[32m    </option>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ProjectFrameBounds" extendedState="6">[m
[32m+[m[32m    <option name="x" value="260" />[m
[32m+[m[32m    <option name="y" value="21" />[m
[32m+[m[32m    <option name="width" value="1400" />[m
[32m+[m[32m    <option name="height" value="1000" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ProjectLevelVcsManager" settingsEditedManually="true">[m
[32m+[m[32m    <ConfirmationsSetting value="1" id="Add" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ProjectView">[m
[32m+[m[32m    <navigator currentView="ProjectPane" proportions="" version="1">[m
[32m+[m[32m      <flattenPackages />[m
[32m+[m[32m      <showMembers />[m
[32m+[m[32m      <showModules />[m
[32m+[m[32m      <showLibraryContents />[m
[32m+[m[32m      <hideEmptyPackages />[m
[32m+[m[32m      <abbreviatePackageNames />[m
[32m+[m[32m      <autoscrollToSource />[m
[32m+[m[32m      <autoscrollFromSource />[m
[32m+[m[32m      <sortByType />[m
[32m+[m[32m      <manualOrder />[m
[32m+[m[32m      <foldersAlwaysOnTop value="true" />[m
[32m+[m[32m    </navigator>[m
[32m+[m[32m    <panes>[m
[32m+[m[32m      <pane id="AndroidView" />[m
[32m+[m[32m      <pane id="PackagesPane" />[m
[32m+[m[32m      <pane id="Scope" />[m
[32m+[m[32m      <pane id="Scratches" />[m
[32m+[m[32m      <pane id="ProjectPane">[m
[32m+[m[32m        <subPane>[m
[32m+[m[32m          <expand>[m
[32m+[m[32m            <path>[m
[32m+[m[32m              <item name="Chat" type="b2602c69:ProjectViewProjectNode" />[m
[32m+[m[32m              <item name="Chat" type="462c0819:PsiDirectoryNode" />[m
[32m+[m[32m            </path>[m
[32m+[m[32m            <path>[m
[32m+[m[32m              <item name="Chat" type="b2602c69:ProjectViewProjectNode" />[m
[32m+[m[32m              <item name="Chat" type="462c0819:PsiDirectoryNode" />[m
[32m+[m[32m              <item name="GUI" type="462c0819:PsiDirectoryNode" />[m
[32m+[m[32m            </path>[m
[32m+[m[32m          </expand>[m
[32m+[m[32m          <select />[m
[32m+[m[32m        </subPane>[m
[32m+[m[32m      </pane>[m
[32m+[m[32m    </panes>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="PropertiesComponent">[m
[32m+[m[32m    <property name="project.structure.last.edited" value="Modules" />[m
[32m+[m[32m    <property name="project.structure.proportion" value="0.15" />[m
[32m+[m[32m    <property name="project.structure.side.proportion" value="0.2" />[m
[32m+[m[32m    <property name="last_opened_file_path" value="$PROJECT_DIR$" />[m
[32m+[m[32m    <property name="settings.editor.selected.configurable" value="configurable.group.language" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="RunDashboard">[m
[32m+[m[32m    <option name="ruleStates">[m
[32m+[m[32m      <list>[m
[32m+[m[32m        <RuleState>[m
[32m+[m[32m          <option name="name" value="ConfigurationTypeDashboardGroupingRule" />[m
[32m+[m[32m        </RuleState>[m
[32m+[m[32m        <RuleState>[m
[32m+[m[32m          <option name="name" value="StatusDashboardGroupingRule" />[m
[32m+[m[32m        </RuleState>[m
[32m+[m[32m      </list>[m
[32m+[m[32m    </option>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="RunManager" selected="Application.ClientGUI">[m
[32m+[m[32m    <configuration name="ClientGUI" type="Application" factoryName="Application" temporary="true" nameIsGenerated="true">[m
[32m+[m[32m      <extension name="coverage" enabled="false" merge="false" sample_coverage="true" runner="idea" />[m
[32m+[m[32m      <option name="MAIN_CLASS_NAME" value="ClientGUI" />[m
[32m+[m[32m      <option name="VM_PARAMETERS" />[m
[32m+[m[32m      <option name="PROGRAM_PARAMETERS" />[m
[32m+[m[32m      <option name="WORKING_DIRECTORY" value="$PROJECT_DIR$" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH_ENABLED" value="false" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH" />[m
[32m+[m[32m      <option name="ENABLE_SWING_INSPECTOR" value="false" />[m
[32m+[m[32m      <option name="ENV_VARIABLES" />[m
[32m+[m[32m      <option name="PASS_PARENT_ENVS" value="true" />[m
[32m+[m[32m      <module name="Chat" />[m
[32m+[m[32m      <envs />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="Applet" factoryName="Applet">[m
[32m+[m[32m      <option name="HTML_USED" value="false" />[m
[32m+[m[32m      <option name="WIDTH" value="400" />[m
[32m+[m[32m      <option name="HEIGHT" value="300" />[m
[32m+[m[32m      <option name="POLICY_FILE" value="$APPLICATION_HOME_DIR$/bin/appletviewer.policy" />[m
[32m+[m[32m      <module />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="Application" factoryName="Application">[m
[32m+[m[32m      <extension name="coverage" enabled="false" merge="false" sample_coverage="true" runner="idea" />[m
[32m+[m[32m      <option name="MAIN_CLASS_NAME" />[m
[32m+[m[32m      <option name="VM_PARAMETERS" />[m
[32m+[m[32m      <option name="PROGRAM_PARAMETERS" />[m
[32m+[m[32m      <option name="WORKING_DIRECTORY" value="$PROJECT_DIR$" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH_ENABLED" value="false" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH" />[m
[32m+[m[32m      <option name="ENABLE_SWING_INSPECTOR" value="false" />[m
[32m+[m[32m      <option name="ENV_VARIABLES" />[m
[32m+[m[32m      <option name="PASS_PARENT_ENVS" value="true" />[m
[32m+[m[32m      <module name="" />[m
[32m+[m[32m      <envs />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="JUnit" factoryName="JUnit">[m
[32m+[m[32m      <extension name="coverage" enabled="false" merge="false" sample_coverage="true" runner="idea" />[m
[32m+[m[32m      <module name="" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH_ENABLED" value="false" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH" />[m
[32m+[m[32m      <option name="PACKAGE_NAME" />[m
[32m+[m[32m      <option name="MAIN_CLASS_NAME" />[m
[32m+[m[32m      <option name="METHOD_NAME" />[m
[32m+[m[32m      <option name="TEST_OBJECT" value="class" />[m
[32m+[m[32m      <option name="VM_PARAMETERS" value="-ea" />[m
[32m+[m[32m      <option name="PARAMETERS" />[m
[32m+[m[32m      <option name="WORKING_DIRECTORY" value="$MODULE_DIR$" />[m
[32m+[m[32m      <option name="ENV_VARIABLES" />[m
[32m+[m[32m      <option name="PASS_PARENT_ENVS" value="true" />[m
[32m+[m[32m      <option name="TEST_SEARCH_SCOPE">[m
[32m+[m[32m        <value defaultName="singleModule" />[m
[32m+[m[32m      </option>[m
[32m+[m[32m      <envs />[m
[32m+[m[32m      <patterns />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="#org.jetbrains.idea.devkit.run.PluginConfigurationType" factoryName="Plugin">[m
[32m+[m[32m      <module name="" />[m
[32m+[m[32m      <option name="VM_PARAMETERS" value="-Xmx512m -Xms256m -XX:MaxPermSize=250m -ea" />[m
[32m+[m[32m      <option name="PROGRAM_PARAMETERS" />[m
[32m+[m[32m      <predefined_log_file id="idea.log" enabled="true" />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="Remote" factoryName="Remote">[m
[32m+[m[32m      <option name="USE_SOCKET_TRANSPORT" value="true" />[m
[32m+[m[32m      <option name="SERVER_MODE" value="false" />[m
[32m+[m[32m      <option name="SHMEM_ADDRESS" value="javadebug" />[m
[32m+[m[32m      <option name="HOST" value="localhost" />[m
[32m+[m[32m      <option name="PORT" value="5005" />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <configuration default="true" type="TestNG" factoryName="TestNG">[m
[32m+[m[32m      <extension name="coverage" enabled="false" merge="false" sample_coverage="true" runner="idea" />[m
[32m+[m[32m      <module name="" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH_ENABLED" value="false" />[m
[32m+[m[32m      <option name="ALTERNATIVE_JRE_PATH" />[m
[32m+[m[32m      <option name="SUITE_NAME" />[m
[32m+[m[32m      <option name="PACKAGE_NAME" />[m
[32m+[m[32m      <option name="MAIN_CLASS_NAME" />[m
[32m+[m[32m      <option name="METHOD_NAME" />[m
[32m+[m[32m      <option name="GROUP_NAME" />[m
[32m+[m[32m      <option name="TEST_OBJECT" value="CLASS" />[m
[32m+[m[32m      <option name="VM_PARAMETERS" value="-ea" />[m
[32m+[m[32m      <option name="PARAMETERS" />[m
[32m+[m[32m      <option name="WORKING_DIRECTORY" value="$MODULE_DIR$" />[m
[32m+[m[32m      <option name="OUTPUT_DIRECTORY" />[m
[32m+[m[32m      <option name="ANNOTATION_TYPE" />[m
[32m+[m[32m      <option name="ENV_VARIABLES" />[m
[32m+[m[32m      <option name="PASS_PARENT_ENVS" value="true" />[m
[32m+[m[32m      <option name="TEST_SEARCH_SCOPE">[m
[32m+[m[32m        <value defaultName="singleModule" />[m
[32m+[m[32m      </option>[m
[32m+[m[32m      <option name="USE_DEFAULT_REPORTERS" value="false" />[m
[32m+[m[32m      <option name="PROPERTIES_FILE" />[m
[32m+[m[32m      <envs />[m
[32m+[m[32m      <properties />[m
[32m+[m[32m      <listeners />[m
[32m+[m[32m    </configuration>[m
[32m+[m[32m    <recent_temporary>[m
[32m+[m[32m      <list size="1">[m
[32m+[m[32m        <item index="0" class="java.lang.String" itemvalue="Application.ClientGUI" />[m
[32m+[m[32m      </list>[m
[32m+[m[32m    </recent_temporary>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ShelveChangesManager" show_recycled="false">[m
[32m+[m[32m    <option name="remove_strategy" value="false" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="TaskManager">[m
[32m+[m[32m    <task active="true" id="Default" summary="Default task">[m
[32m+[m[32m      <changelist id="18ef6d63-ea13-4fae-ab34-1cc7a5b0f04a" name="Default" comment="" />[m
[32m+[m[32m      <created>1510740772608</created>[m
[32m+[m[32m      <option name="number" value="Default" />[m
[32m+[m[32m      <option name="presentableId" value="Default" />[m
[32m+[m[32m      <updated>1510740772608</updated>[m
[32m+[m[32m    </task>[m
[32m+[m[32m    <servers />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="ToolWindowManager">[m
[32m+[m[32m    <frame x="-9" y="-9" width="1938" height="1060" extended-state="6" />[m
[32m+[m[32m    <editor active="true" />[m
[32m+[m[32m    <layout>[m
[32m+[m[32m      <window_info id="Palette" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="3" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="TODO" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="6" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Palette&#9;" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="7" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Image Layers" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="6" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Capture Analysis" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="5" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Event Log" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="7" side_tool="true" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Maven Projects" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="4" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Run" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.32897604" sideWeight="0.5" order="2" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Version Control" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="10" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Terminal" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="9" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Capture Tool" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="2" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Designer" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="3" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Project" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="true" show_stripe_button="true" weight="0.1796875" sideWeight="0.5" order="0" side_tool="false" content_ui="combo" />[m
[32m+[m[32m      <window_info id="Structure" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="1" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Ant Build" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="1" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="UI Designer" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="4" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Theme Preview" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="6" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Debug" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.39978212" sideWeight="0.5" order="3" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Favorites" active="false" anchor="left" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="5" side_tool="true" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Cvs" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="4" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Message" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="0" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Commander" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.4" sideWeight="0.5" order="0" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Hierarchy" active="false" anchor="right" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.25" sideWeight="0.5" order="2" side_tool="false" content_ui="combo" />[m
[32m+[m[32m      <window_info id="Messages" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="8" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Inspection" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.4" sideWeight="0.5" order="5" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m      <window_info id="Find" active="false" anchor="bottom" auto_hide="false" internal_type="DOCKED" type="DOCKED" visible="false" show_stripe_button="true" weight="0.33" sideWeight="0.5" order="1" side_tool="false" content_ui="tabs" />[m
[32m+[m[32m    </layout>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="VcsContentAnnotationSettings">[m
[32m+[m[32m    <option name="myLimit" value="2678400000" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="VcsManagerConfiguration">[m
[32m+[m[32m    <ignored-roots>[m
[32m+[m[32m      <path value="$PROJECT_DIR$" />[m
[32m+[m[32m    </ignored-roots>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="XDebuggerManager">[m
[32m+[m[32m    <breakpoint-manager>[m
[32m+[m[32m      <option name="time" value="3" />[m
[32m+[m[32m    </breakpoint-manager>[m
[32m+[m[32m    <watches-manager />[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="editorHistoryManager">[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ServerGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="3297">[m
[32m+[m[32m          <caret line="161" column="18" lean-forward="true" selection-start-line="161" selection-start-column="18" selection-end-line="161" selection-end-column="18" />[m
[32m+[m[32m          <folding>[m
[32m+[m[32m            <element signature="e#0#10640#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#8415#8502#0" expanded="true" />[m
[32m+[m[32m          </folding>[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/Chat.iml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="105">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="105">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ServerGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="3255">[m
[32m+[m[32m          <caret line="155" column="13" lean-forward="true" selection-start-line="155" selection-start-column="13" selection-end-line="155" selection-end-column="13" />[m
[32m+[m[32m          <folding>[m
[32m+[m[32m            <element signature="e#0#10640#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#8415#8502#0" expanded="true" />[m
[32m+[m[32m          </folding>[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="105">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="126">[m
[32m+[m[32m          <caret line="6" column="27" lean-forward="true" selection-start-line="6" selection-start-column="27" selection-end-line="6" selection-end-column="27" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="21">[m
[32m+[m[32m          <caret line="6" column="27" lean-forward="false" selection-start-line="6" selection-start-column="27" selection-end-line="6" selection-end-column="27" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/misc.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/modules.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/workspace.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="jar://C:/Program Files/Java/jdk1.8.0_121/src.zip!/javax/swing/JLabel.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="39240">[m
[32m+[m[32m          <caret line="1635" column="0" lean-forward="false" selection-start-line="109" selection-start-column="0" selection-end-line="1635" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="1608">[m
[32m+[m[32m          <caret line="70" column="55" lean-forward="false" selection-start-line="70" selection-start-column="55" selection-end-line="70" selection-end-column="55" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="456">[m
[32m+[m[32m          <caret line="22" column="33" lean-forward="true" selection-start-line="22" selection-start-column="33" selection-end-line="22" selection-end-column="33" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/misc.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/modules.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/workspace.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="4416">[m
[32m+[m[32m          <caret line="197" column="45" lean-forward="true" selection-start-line="197" selection-start-column="45" selection-end-line="197" selection-end-column="45" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/misc.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/modules.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/.idea/workspace.xml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="jar://C:/Program Files/Java/jdk1.8.0_121/src.zip!/javax/swing/JLabel.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="37128">[m
[32m+[m[32m          <caret line="1635" column="0" lean-forward="false" selection-start-line="109" selection-start-column="0" selection-end-line="1635" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="jar://C:/Program Files/Java/jdk1.8.0_121/src.zip!/java/lang/Thread.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="186">[m
[32m+[m[32m          <caret line="744" column="0" lean-forward="false" selection-start-line="744" selection-start-column="0" selection-end-line="744" selection-end-column="0" />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/Main.java" />[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/CommonGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ClientGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="42">[m
[32m+[m[32m          <caret line="5" column="13" lean-forward="false" selection-start-line="5" selection-start-column="13" selection-end-line="5" selection-end-column="13" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/Chat.iml">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="0">[m
[32m+[m[32m          <caret line="0" column="0" lean-forward="false" selection-start-line="0" selection-start-column="0" selection-end-line="0" selection-end-column="0" />[m
[32m+[m[32m          <folding />[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/Menu.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="84">[m
[32m+[m[32m          <caret line="4" column="3" lean-forward="false" selection-start-line="4" selection-start-column="3" selection-end-line="4" selection-end-column="3" />[m
[32m+[m[32m          <folding>[m
[32m+[m[32m            <element signature="e#0#6262#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#334#335#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#366#367#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#587#617#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#622#685#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1284#1285#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1353#1354#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1652#1653#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1721#1722#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1922#1923#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#1985#1986#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#4485#4572#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#5942#5943#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#6001#6002#0" expanded="true" />[m
[32m+[m[32m          </folding>[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m    <entry file="file://$PROJECT_DIR$/GUI/ServerGUI.java">[m
[32m+[m[32m      <provider selected="true" editor-type-id="text-editor">[m
[32m+[m[32m        <state relative-caret-position="546">[m
[32m+[m[32m          <caret line="112" column="23" lean-forward="false" selection-start-line="112" selection-start-column="23" selection-end-line="112" selection-end-column="23" />[m
[32m+[m[32m          <folding>[m
[32m+[m[32m            <element signature="e#0#10640#0" expanded="true" />[m
[32m+[m[32m            <element signature="e#8415#8502#0" expanded="true" />[m
[32m+[m[32m          </folding>[m
[32m+[m[32m        </state>[m
[32m+[m[32m      </provider>[m
[32m+[m[32m    </entry>[m
[32m+[m[32m  </component>[m
[32m+[m[32m  <component name="masterDetails">[m
[32m+[m[32m    <states>[m
[32m+[m[32m      <state key="ArtifactsStructureConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <artifact-editor />[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m      <state key="FacetStructureConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <last-edited>No facets are configured</last-edited>[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m      <state key="GlobalLibrariesConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m      <state key="JdkListConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <last-edited>1.8</last-edited>[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m      <state key="ModuleStructureConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <last-edited>Chat</last-edited>[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m                <option value="0.6" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m      <state key="ProjectLibrariesConfigurable.UI">[m
[32m+[m[32m        <settings>[m
[32m+[m[32m          <splitter-proportions>[m
[32m+[m[32m            <option name="proportions">[m
[32m+[m[32m              <list>[m
[32m+[m[32m                <option value="0.2" />[m
[32m+[m[32m              </list>[m
[32m+[m[32m            </option>[m
[32m+[m[32m          </splitter-proportions>[m
[32m+[m[32m        </settings>[m
[32m+[m[32m      </state>[m
[32m+[m[32m    </states>[m
[32m+[m[32m  </component>[m
[32m+[m[32m</project>[m
\ No newline at end of file[m
[1mdiff --git a/Chat.iml b/Chat.iml[m
[1mnew file mode 100644[m
[1mindex 0000000..b88538d[m
[1m--- /dev/null[m
[1m+++ b/Chat.iml[m
[36m@@ -0,0 +1,11 @@[m
[32m+[m[32m<?xml version="1.0" encoding="UTF-8"?>[m
[32m+[m[32m<module type="JAVA_MODULE" version="4">[m
[32m+[m[32m  <component name="NewModuleRootManager" inherit-compiler-output="true">[m
[32m+[m[32m    <exclude-output />[m
[32m+[m[32m    <content url="file://$MODULE_DIR$">[m
[32m+[m[32m      <sourceFolder url="file://$MODULE_DIR$/GUI" isTestSource="false" />[m
[32m+[m[32m    </content>[m
[32m+[m[32m    <orderEntry type="inheritedJdk" />[m
[32m+[m[32m    <orderEntry type="sourceFolder" forTests="false" />[m
[32m+[m[32m  </component>[m
[32m+[m[32m</module>[m
\ No newline at end of file[m
[1mdiff --git a/GUI/ClientGUI.java b/GUI/ClientGUI.java[m
[1mnew file mode 100644[m
[1mindex 0000000..bd0d0bc[m
[1m--- /dev/null[m
[1m+++ b/GUI/ClientGUI.java[m
[36m@@ -0,0 +1,149 @@[m
[32m+[m[32mimport javax.swing.*;[m
[32m+[m[32mimport java.awt.*;[m
[32m+[m[32mimport java.awt.event.ActionEvent;[m
[32m+[m[32mimport java.awt.event.ActionListener;[m
[32m+[m
[32m+[m[32mpublic class ClientGUI extends CommonGUI {[m
[32m+[m[32m    private JButton connectButton;[m
[32m+[m[32m    private JButton disconnectButton;[m
[32m+[m[32m    private JTextField usernameField;[m
[32m+[m[32m    private JLabel usernameLabel;[m
[32m+[m
[32m+[m[32m    public ClientGUI() {[m
[32m+[m
[32m+[m[32m        initComponents();[m
[32m+[m[32m    }[m
[32m+[m[32m    private void initComponents() {[m
[32m+[m
[32m+[m[32m        usernameLabel = new JLabel();[m
[32m+[m[32m        usernameField = new JTextField();[m
[32m+[m[32m        connectButton = new JButton();[m
[32m+[m[32m        disconnectButton = new JButton();[m
[32m+[m
[32m+[m[32m        setSize(new Dimension(0, 0));[m
[32m+[m
[32m+[m[32m        usernameLabel.setFont(new Font("Arial", 0, 12));[m
[32m+[m[32m        usernameLabel.setText("Username");[m
[32m+[m
[32m+[m[32m        connectButton.setFont(new Font("Arial", 0, 12)); // NOI18N[m
[32m+[m[32m        connectButton.setText("Connect");[m
[32m+[m[32m        connectButton.setCursor(new Cursor(Cursor.HAND_CURSOR));[m
[32m+[m[32m        connectButton.addActionListener(new connectButtonListener());[m
[32m+[m
[32m+[m
[32m+[m[32m        disconnectButton.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N[m
[32m+[m[32m        disconnectButton.setText("Disconnect");[m
[32m+[m[32m        disconnectButton.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));[m
[32m+[m[32m        disconnectButton.addActionListener(new disconnectionButtonListener());[m
[32m+[m
[32m+[m[32m        GroupLayout layout = new GroupLayout(getContentPane());[m
[32m+[m[32m        getContentPane().setLayout(layout);[m
[32m+[m[32m        layout.setHorizontalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addContainerGap()[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)[m
[32m+[m[32m                                        .addComponent(messageScPane)[m
[32m+[m[32m                                        .addComponent(chatScPane)[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)[m
[32m+[m[32m                                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                                .addComponent(usernameLabel, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                                .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE))[m
[32m+[m[32m                                                        .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                                                        .addComponent(ipLabel)[m
[32m+[m[32m                                                                        .addComponent(portLabel))[m
[32m+[m[32m                                                                .addGap(52, 52, 52)[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                                                        .addComponent(ipField)[m
[32m+[m[32m                                                                        .addComponent(portField))))[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)[m
[32m+[m[32m                                                .addComponent(connectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addComponent(disconnectButton, javax.swing.GroupLayout.PREFERRED_SIZE, 150, javax.swing.GroupLayout.PREFERRED_SIZE)))[m
[32m+[m[32m                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)[m
[32m+[m[32m                                        .addComponent(onlineUsersLabel, javax.swing.GroupLayout.DEFAULT_SIZE, 185, Short.MAX_VALUE)[m
[32m+[m[32m                                        .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)[m
[32m+[m[32m                                        .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))[m
[32m+[m[32m                                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))[m
[32m+[m[32m        );[m
[32m+[m[32m        layout.setVerticalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addGap(13, 13, 13)[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)[m
[32m+[m[32m                                                        .addComponent(disconnectButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)[m
[32m+[m[32m                                                        .addComponent(connectButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)[m
[32m+[m[32m                                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)[m
[32m+[m[32m                                                                        .addComponent(usernameLabel)[m
[32m+[m[32m                                                                        .addComponent(usernameField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))[m
[32m+[m[32m                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)[m
[32m+[m[32m                                                                        .addComponent(ipLabel)[m
[32m+[m[32m                                                                        .addComponent(ipField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))[m
[32m+[m[32m                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)[m
[32m+[m[32m                                                                        .addComponent(portLabel)[m
[32m+[m[32m                                                                        .addComponent(portField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))))[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)[m
[32m+[m[32m                                                .addComponent(chatScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 323, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addComponent(messageScPane))[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addComponent(onlineUsersLabel)[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 500, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, 93, Short.MAX_VALUE)))[m
[32m+[m[32m                                .addContainerGap())[m
[32m+[m[32m        );[m
[32m+[m
[32m+[m[32m        pack();[m
[32m+[m[32m    }[m
[32m+[m[32m    public class connectButtonListener implements ActionListener {[m
[32m+[m[32m        public void actionPerformed(ActionEvent e) {[m
[32m+[m[32m            String ip = ipField.getText();[m
[32m+[m[32m            ipField.setText("");[m
[32m+[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m    public class disconnectionButtonListener implements ActionListener {[m
[32m+[m[32m        public void actionPerformed(ActionEvent e) {[m
[32m+[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    public static void main(String args[]) {[m
[32m+[m[32m        try {[m
[32m+[m[32m            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {[m
[32m+[m[32m                if ("Nimbus".equals(info.getName())) {[m
[32m+[m[32m                    javax.swing.UIManager.setLookAndFeel(info.getClassName());[m
[32m+[m[32m                    break;[m
[32m+[m[32m                }[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch (ClassNotFoundException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (InstantiationException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (IllegalAccessException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (javax.swing.UnsupportedLookAndFeelException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ClientGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        }[m
[32m+[m[32m        //</editor-fold>[m
[32m+[m[32m        //</editor-fold>[m
[32m+[m
[32m+[m[32m        /* Create and display the form */[m
[32m+[m[32m        java.awt.EventQueue.invokeLater(new Runnable() {[m
[32m+[m[32m            public void run() {[m
[32m+[m[32m                new ClientGUI().setVisible(true);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/GUI/CommonGUI.java b/GUI/CommonGUI.java[m
[1mnew file mode 100644[m
[1mindex 0000000..8054c4f[m
[1m--- /dev/null[m
[1m+++ b/GUI/CommonGUI.java[m
[36m@@ -0,0 +1,79 @@[m
[32m+[m[32mimport javax.swing.*;[m
[32m+[m[32mimport java.awt.*;[m
[32m+[m[32mimport java.awt.event.ActionEvent;[m
[32m+[m[32mimport java.awt.event.ActionListener;[m
[32m+[m
[32m+[m[32mpublic class CommonGUI extends JFrame{[m
[32m+[m[32m    JScrollPane chatScPane;[m
[32m+[m[32m    JTextArea chatTextArea;[m
[32m+[m[32m    JTextField ipField;[m
[32m+[m[32m    JLabel ipLabel;[m
[32m+[m[32m    JScrollPane messageScPane;[m
[32m+[m[32m    JTextArea messageTextArea;[m
[32m+[m[32m    JLabel onlineUsersLabel;[m
[32m+[m[32m    JScrollPane onlineUsersScPane;[m
[32m+[m[32m    JTextArea onlineUsersTextArea;[m
[32m+[m[32m    JTextField portField;[m
[32m+[m[32m    JLabel portLabel;[m
[32m+[m[32m    JButton sendButton;[m
[32m+[m[32m    public CommonGUI() {[m
[32m+[m[32m        ipLabel = new JLabel();[m
[32m+[m[32m        onlineUsersLabel = new JLabel();[m
[32m+[m[32m        portLabel = new JLabel();[m
[32m+[m[32m        ipField = new JTextField();[m
[32m+[m[32m        portField = new JTextField();[m
[32m+[m[32m        sendButton = new JButton();[m
[32m+[m[32m        chatScPane = new JScrollPane();[m
[32m+[m[32m        chatTextArea = new JTextArea();[m
[32m+[m[32m        onlineUsersScPane = new JScrollPane();[m
[32m+[m[32m        onlineUsersTextArea = new JTextArea();[m
[32m+[m[32m        messageScPane = new JScrollPane();[m
[32m+[m[32m        messageTextArea = new JTextArea();[m
[32m+[m
[32m+[m[32m        setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);[m
[32m+[m[32m        setTitle("Chat");[m
[32m+[m[32m        setAutoRequestFocus(false);[m
[32m+[m[32m        setCursor(new Cursor(Cursor.DEFAULT_CURSOR));[m
[32m+[m[32m        setResizable(false);[m
[32m+[m
[32m+[m[32m        ipLabel.setFont(new Font("Arial", 0, 12));[m
[32m+[m[32m        ipLabel.setText("IP");[m
[32m+[m
[32m+[m[32m        onlineUsersLabel.setFont(new Font("Arial", 0, 12));[m
[32m+[m[32m        onlineUsersLabel.setHorizontalAlignment(SwingConstants.CENTER);[m
[32m+[m[32m        onlineUsersLabel.setText("Online Users");[m
[32m+[m
[32m+[m[32m        portLabel.setFont(new Font("Arial", 0, 12));[m
[32m+[m[32m        portLabel.setText("Port");[m
[32m+[m
[32m+[m[32m        sendButton.setFont(new java.awt.Font("Arial", 0, 12)); // NOI18N[m
[32m+[m[32m        sendButton.setText("Send");[m
[32m+[m[32m        sendButton.setCursor(new Cursor(Cursor.HAND_CURSOR));[m
[32m+[m[32m        sendButton.addActionListener(new sendButtonListener());[m
[32m+[m
[32m+[m[32m        chatTextArea.setEditable(false);[m
[32m+[m[32m        chatTextArea.setColumns(20);[m
[32m+[m[32m        chatTextArea.setRows(5);[m
[32m+[m[32m        chatScPane.setViewportView(chatTextArea);[m
[32m+[m
[32m+[m[32m        onlineUsersTextArea.setEditable(false);[m
[32m+[m[32m        onlineUsersTextArea.setColumns(20);[m
[32m+[m[32m        onlineUsersTextArea.setLineWrap(true);[m
[32m+[m[32m        onlineUsersTextArea.setRows(5);[m
[32m+[m[32m        onlineUsersScPane.setViewportView(onlineUsersTextArea);[m
[32m+[m
[32m+[m[32m        messageTextArea.setColumns(20);[m
[32m+[m[32m        messageTextArea.setFont(new java.awt.Font("Arial", 0, 14)); // NOI18N[m
[32m+[m[32m        messageTextArea.setLineWrap(true);[m
[32m+[m[32m        messageTextArea.setRows(5);[m
[32m+[m[32m        messageTextArea.setToolTipText("");[m
[32m+[m[32m        messageTextArea.setCursor(new Cursor(Cursor.TEXT_CURSOR));[m
[32m+[m[32m        messageScPane.setViewportView(messageTextArea);[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m[32m    public class sendButtonListener implements ActionListener {[m
[32m+[m[32m        public void actionPerformed(ActionEvent e) {[m
[32m+[m
[32m+[m[32m        }[m
[32m+[m[32m    }[m
[32m+[m[32m}[m
[1mdiff --git a/GUI/Menu.java b/GUI/Menu.java[m
[1mnew file mode 100644[m
[1mindex 0000000..a493b7f[m
[1m--- /dev/null[m
[1m+++ b/GUI/Menu.java[m
[36m@@ -0,0 +1,139 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author Р•РІРіРµРЅРёР№[m
[32m+[m[32m */[m
[32m+[m[32mpublic class Menu extends javax.swing.JFrame {[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Creates new form Menu[m
[32m+[m[32m     */[m
[32m+[m[32m    public Menu() {[m
[32m+[m[32m        initComponents();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * This method is called from within the constructor to initialize the form.[m
[32m+[m[32m     * WARNING: Do NOT modify this code. The content of this method is always[m
[32m+[m[32m     * regenerated by the Form Editor.[m
[32m+[m[32m     */[m
[32m+[m[32m    @SuppressWarnings("unchecked")[m
[32m+[m[32m    // <editor-fold defaultstate="collapsed" desc="Generated Code">[m
[32m+[m[32m    private void initComponents() {[m
[32m+[m
[32m+[m[32m        serverRadioButton = new javax.swing.JRadioButton();[m
[32m+[m[32m        clientRadioButton = new javax.swing.JRadioButton();[m
[32m+[m[32m        startButton = new javax.swing.JButton();[m
[32m+[m
[32m+[m[32m        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);[m
[32m+[m[32m        setResizable(false);[m
[32m+[m
[32m+[m[32m        serverRadioButton.setText("Server");[m
[32m+[m[32m        serverRadioButton.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);[m
[32m+[m[32m        serverRadioButton.addActionListener(new java.awt.event.ActionListener() {[m
[32m+[m[32m            public void actionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m                serverRadioButtonActionPerformed(evt);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m
[32m+[m[32m        clientRadioButton.setText("Client");[m
[32m+[m[32m        clientRadioButton.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);[m
[32m+[m[32m        clientRadioButton.addActionListener(new java.awt.event.ActionListener() {[m
[32m+[m[32m            public void actionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m                clientRadioButtonActionPerformed(evt);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m
[32m+[m[32m        startButton.setText("Start");[m
[32m+[m[32m        startButton.addActionListener(new java.awt.event.ActionListener() {[m
[32m+[m[32m            public void actionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m                startButtonActionPerformed(evt);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m
[32m+[m[32m        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());[m
[32m+[m[32m        getContentPane().setLayout(layout);[m
[32m+[m[32m        layout.setHorizontalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addContainerGap()[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                        .addComponent(startButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)[m
[32m+[m[32m                                        .addComponent(clientRadioButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)[m
[32m+[m[32m                                        .addComponent(serverRadioButton, javax.swing.GroupLayout.DEFAULT_SIZE, 153, Short.MAX_VALUE))[m
[32m+[m[32m                                .addContainerGap())[m
[32m+[m[32m        );[m
[32m+[m[32m        layout.setVerticalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addGap(26, 26, 26)[m
[32m+[m[32m                                .addComponent(clientRadioButton, javax.swing.GroupLayout.PREFERRED_SIZE, 18, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                .addComponent(serverRadioButton)[m
[32m+[m[32m                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)[m
[32m+[m[32m                                .addComponent(startButton, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                .addContainerGap(56, Short.MAX_VALUE))[m
[32m+[m[32m        );[m
[32m+[m
[32m+[m[32m        pack();[m
[32m+[m[32m    }// </editor-fold>[m
[32m+[m
[32m+[m[32m    private void serverRadioButtonActionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m        // TODO add your handling code here:[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    private void clientRadioButtonActionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m        // TODO add your handling code here:[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    private void startButtonActionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m        // TODO add your handling code here:[m
[32m+[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * @param args the command line arguments[m
[32m+[m[32m     */[m
[32m+[m[32m    public static void main(String args[]) {[m
[32m+[m[32m        /* Set the Nimbus look and feel */[m
[32m+[m[32m        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">[m
[32m+[m[32m        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.[m
[32m+[m[32m         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html[m
[32m+[m[32m         */[m
[32m+[m[32m        try {[m
[32m+[m[32m            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {[m
[32m+[m[32m                if ("Nimbus".equals(info.getName())) {[m
[32m+[m[32m                    javax.swing.UIManager.setLookAndFeel(info.getClassName());[m
[32m+[m[32m                    break;[m
[32m+[m[32m                }[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch (ClassNotFoundException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (InstantiationException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (IllegalAccessException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (javax.swing.UnsupportedLookAndFeelException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(Menu.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        }[m
[32m+[m[32m        //</editor-fold>[m
[32m+[m
[32m+[m[32m        /* Create and display the form */[m
[32m+[m[32m        java.awt.EventQueue.invokeLater(new Runnable() {[m
[32m+[m[32m            public void run() {[m
[32m+[m[32m                new Menu().setVisible(true);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    // Variables declaration - do not modify[m
[32m+[m[32m    private javax.swing.JRadioButton clientRadioButton;[m
[32m+[m[32m    private javax.swing.JRadioButton serverRadioButton;[m
[32m+[m[32m    private javax.swing.JButton startButton;[m
[32m+[m[32m    // End of variables declaration[m
[32m+[m[32m}[m
[1mdiff --git a/GUI/ServerGUI.java b/GUI/ServerGUI.java[m
[1mnew file mode 100644[m
[1mindex 0000000..461be7a[m
[1m--- /dev/null[m
[1m+++ b/GUI/ServerGUI.java[m
[36m@@ -0,0 +1,188 @@[m
[32m+[m[32m/*[m
[32m+[m[32m * To change this license header, choose License Headers in Project Properties.[m
[32m+[m[32m * To change this template file, choose Tools | Templates[m
[32m+[m[32m * and open the template in the editor.[m
[32m+[m[32m */[m
[32m+[m
[32m+[m[32m/**[m
[32m+[m[32m *[m
[32m+[m[32m * @author Р•РІРіРµРЅРёР№[m
[32m+[m[32m */[m
[32m+[m[32mpublic class ServerGUI extends javax.swing.JFrame {[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * Creates new form ServerGUI[m
[32m+[m[32m     */[m
[32m+[m[32m    public ServerGUI() {[m
[32m+[m[32m        initComponents();[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * This method is called from within the constructor to initialize the form.[m
[32m+[m[32m     * WARNING: Do NOT modify this code. The content of this method is always[m
[32m+[m[32m     * regenerated by the Form Editor.[m
[32m+[m[32m     */[m
[32m+[m[32m    @SuppressWarnings("unchecked")[m
[32m+[m[32m    // <editor-fold defaultstate="collapsed" desc="Generated Code">[m
[32m+[m[32m    private void initComponents() {[m
[32m+[m
[32m+[m[32m        ipLabel = new javax.swing.JLabel();[m
[32m+[m[32m        portLabel = new javax.swing.JLabel();[m
[32m+[m[32m        onlineUsersLabel = new javax.swing.JLabel();[m
[32m+[m[32m        ipTextField = new javax.swing.JTextField();[m
[32m+[m[32m        portTextField = new javax.swing.JTextField();[m
[32m+[m[32m        onlineUsersScPane = new javax.swing.JScrollPane();[m
[32m+[m[32m        onlineUsersTextArea = new javax.swing.JTextArea();[m
[32m+[m[32m        chatScPane = new javax.swing.JScrollPane();[m
[32m+[m[32m        chatTextArea = new javax.swing.JTextArea();[m
[32m+[m[32m        messageScPane = new javax.swing.JScrollPane();[m
[32m+[m[32m        messageTextArea = new javax.swing.JTextArea();[m
[32m+[m[32m        sendButton = new javax.swing.JButton();[m
[32m+[m
[32m+[m[32m        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);[m
[32m+[m[32m        setResizable(false);[m
[32m+[m[32m        setSize(new java.awt.Dimension(515, 652));[m
[32m+[m
[32m+[m[32m        ipLabel.setText("IP");[m
[32m+[m
[32m+[m[32m        portLabel.setText("Port");[m
[32m+[m
[32m+[m[32m        onlineUsersLabel.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);[m
[32m+[m[32m        onlineUsersLabel.setText("Online Users");[m
[32m+[m
[32m+[m[32m        ipTextField.setEditable(false);[m
[32m+[m
[32m+[m[32m        portTextField.setEditable(false);[m
[32m+[m
[32m+[m[32m        onlineUsersTextArea.setEditable(false);[m
[32m+[m[32m        onlineUsersTextArea.setColumns(20);[m
[32m+[m[32m        onlineUsersTextArea.setRows(5);[m
[32m+[m[32m        onlineUsersScPane.setViewportView(onlineUsersTextArea);[m
[32m+[m
[32m+[m[32m        chatTextArea.setEditable(false);[m
[32m+[m[32m        chatTextArea.setColumns(20);[m
[32m+[m[32m        chatTextArea.setRows(5);[m
[32m+[m[32m        chatScPane.setViewportView(chatTextArea);[m
[32m+[m
[32m+[m[32m        messageTextArea.setColumns(20);[m
[32m+[m[32m        messageTextArea.setRows(5);[m
[32m+[m[32m        messageScPane.setViewportView(messageTextArea);[m
[32m+[m
[32m+[m[32m        sendButton.setText("Send");[m
[32m+[m[32m        sendButton.addActionListener(new java.awt.event.ActionListener() {[m
[32m+[m[32m            public void actionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m                sendButtonActionPerformed(evt);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m
[32m+[m[32m        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());[m
[32m+[m[32m        getContentPane().setLayout(layout);[m
[32m+[m[32m        layout.setHorizontalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addContainerGap()[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addComponent(messageScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 440, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)[m
[32m+[m[32m                                                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                                                .addComponent(ipLabel)[m
[32m+[m[32m                                                                                .addGap(18, 18, 18)[m
[32m+[m[32m                                                                                .addComponent(ipTextField))[m
[32m+[m[32m                                                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                                                .addComponent(portLabel)[m
[32m+[m[32m                                                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                                                .addComponent(portTextField, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)))[m
[32m+[m[32m                                                                .addGap(0, 0, Short.MAX_VALUE))[m
[32m+[m[32m                                                        .addComponent(chatScPane))[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)[m
[32m+[m[32m                                                        .addComponent(onlineUsersScPane)[m
[32m+[m[32m                                                        .addComponent(onlineUsersLabel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))))[m
[32m+[m[32m                                .addContainerGap())[m
[32m+[m[32m        );[m
[32m+[m[32m        layout.setVerticalGroup([m
[32m+[m[32m                layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                .addContainerGap()[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)[m
[32m+[m[32m                                        .addComponent(ipLabel)[m
[32m+[m[32m                                        .addComponent(ipTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)[m
[32m+[m[32m                                        .addComponent(onlineUsersLabel))[m
[32m+[m[32m                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)[m
[32m+[m[32m                                        .addGroup(layout.createSequentialGroup()[m
[32m+[m[32m                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)[m
[32m+[m[32m                                                        .addComponent(portLabel)[m
[32m+[m[32m                                                        .addComponent(portTextField, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))[m
[32m+[m[32m                                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)[m
[32m+[m[32m                                                .addComponent(chatScPane))[m
[32m+[m[32m                                        .addComponent(onlineUsersScPane, javax.swing.GroupLayout.PREFERRED_SIZE, 400, javax.swing.GroupLayout.PREFERRED_SIZE))[m
[32m+[m[32m                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)[m
[32m+[m[32m                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)[m
[32m+[m[32m                                        .addComponent(messageScPane, javax.swing.GroupLayout.DEFAULT_SIZE, 200, Short.MAX_VALUE)[m
[32m+[m[32m                                        .addComponent(sendButton, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))[m
[32m+[m[32m                                .addContainerGap())[m
[32m+[m[32m        );[m
[32m+[m
[32m+[m[32m        pack();[m
[32m+[m[32m    }// </editor-fold>[m
[32m+[m
[32m+[m[32m    private void sendButtonActionPerformed(java.awt.event.ActionEvent evt) {[m
[32m+[m[32m        // TODO add your handling code here:[m
[32m+[m[32m    }[m
[32m+[m
[32m+[m[32m    /**[m
[32m+[m[32m     * @param args the command line arguments[m
[32m+[m[32m     */[m
[32m+[m[32m    public static void main(String args[]) {[m
[32m+[m[32m        /* Set the Nimbus look and feel */[m
[32m+[m[32m        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">[m
[32m+[m[32m        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.[m
[32m+[m[32m         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html[m
[32m+[m[32m         */[m
[32m+[m[32m        try {[m
[32m+[m[32m            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {[m
[32m+[m[32m                if ("Nimbus".equals(info.getName())) {[m
[32m+[m[32m                    javax.swing.UIManager.setLookAndFeel(info.getClassName());[m
[32m+[m[32m                    break;[m
[32m+[m[32m                }[m
[32m+[m[32m            }[m
[32m+[m[32m        } catch (ClassNotFoundException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (InstantiationException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (IllegalAccessException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        } catch (javax.swing.UnsupportedLookAndFeelException ex) {[m
[32m+[m[32m            java.util.logging.Logger.getLogger(ServerGUI.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);[m
[32m+[m[32m        }[m
[32m+[m[32m        //</editor-fold>[m
[32m+[m
[32m+[m[32m        /* Create and display the form */[m
[32m+[m[32m        java.awt.EventQueue.invokeLater(new Runnable() {[m
[32m+[m[32m            public void run() {[m
[32m+[m[32m                new ServerGUI().setVisible(true);[m
[32m+[m[32m            }[m
[32m+[m[32m        });[m
[32m+[m[32m    }[m
[32m+[m[32m    // Variables declaration - do not modify[m
[32m+[m[32m    private javax.swing.JScrollPane chatScPane;[m
[32m+[m[32m    private javax.swing.JTextArea chatTextArea;[m
[32m+[m[32m    private javax.swing.JLabel ipLabel;[m
[32m+[m[32m    private javax.swing.JTextField ipTextField;[m
[32m+[m[32m    private javax.swing.JScrollPane messageScPane;[m
[32m+[m[32m    private javax.swing.JTextArea messageTextArea;[m
[32m+[m[32m    private javax.swing.JLabel onlineUsersLabel;[m
[32m+[m[32m    private javax.swing.JScrollPane onlineUsersScPane;[m
[32m+[m[32m    private javax.swing.JTextArea onlineUsersTextArea;[m
[32m+[m[32m    private javax.swing.JLabel portLabel;[m
[32m+[m[32m    private javax.swing.JTextField portTextField;[m
[32m+[m[32m    private javax.swing.JButton sendButton;[m
[32m+[m[32m    // End of variables declaration[m
[32m+[m[32m}[m
[1mdiff --git a/out/production/Chat/ClientGUI$1.class b/out/production/Chat/ClientGUI$1.class[m
[1mnew file mode 100644[m
[1mindex 0000000..e2c895a[m
Binary files /dev/null and b/out/production/Chat/ClientGUI$1.class differ
[1mdiff --git a/out/production/Chat/ClientGUI$connectButtonListener.class b/out/production/Chat/ClientGUI$connectButtonListener.class[m
[1mnew file mode 100644[m
[1mindex 0000000..8317a2e[m
Binary files /dev/null and b/out/production/Chat/ClientGUI$connectButtonListener.class differ
[1mdiff --git a/out/production/Chat/ClientGUI$disconnectionButtonListener.class b/out/production/Chat/ClientGUI$disconnectionButtonListener.class[m
[1mnew file mode 100644[m
[1mindex 0000000..a62d734[m
Binary files /dev/null and b/out/production/Chat/ClientGUI$disconnectionButtonListener.class differ
[1mdiff --git a/out/production/Chat/ClientGUI.class b/out/production/Chat/ClientGUI.class[m
[1mnew file mode 100644[m
[1mindex 0000000..17df142[m
Binary files /dev/null and b/out/production/Chat/ClientGUI.class differ
[1mdiff --git a/out/production/Chat/CommonGUI$sendButtonListener.class b/out/production/Chat/CommonGUI$sendButtonListener.class[m
[1mnew file mode 100644[m
[1mindex 0000000..e48dbc2[m
Binary files /dev/null and b/out/production/Chat/CommonGUI$sendButtonListener.class differ
[1mdiff --git a/out/production/Chat/CommonGUI.class b/out/production/Chat/CommonGUI.class[m
[1mnew file mode 100644[m
[1mindex 0000000..0de3a17[m
Binary files /dev/null and b/out/production/Chat/CommonGUI.class differ
[1mdiff --git a/out/production/Chat/Main$IncomingReader.class b/out/production/Chat/Main$IncomingReader.class[m
[1mnew file mode 100644[m
[1mindex 0000000..b9f5188[m
Binary files /dev/null and b/out/production/Chat/Main$IncomingReader.class differ
[1mdiff --git a/out/production/Chat/Main.class b/out/production/Chat/Main.class[m
[1mnew file mode 100644[m
[1mindex 0000000..9a26ec2[m
Binary files /dev/null and b/out/production/Chat/Main.class differ
