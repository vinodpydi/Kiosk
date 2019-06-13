import os
import datetime
import shutil

def CreateBuildDir(path, filesToKeep):
    x = datetime.datetime.now()
    dirName=x.strftime("%Y%m%d%H%M%S")
    
    if not os.path.exists(path):    
        try:
            os.makedirs(path)
            
        except OSError:
            print ("Error in Directory Creation :  %s - %s" %(e.filename, e.strerror))
        else:
            print ("Successfully created the directory %s" %path)
    else:
        print ("%s directory already exist" %path)
    
    os.chdir(path)
    list = os.listdir(path)
    if (len(list)>=filesToKeep):
        dirNameTobeDeleted=''
        print("Current Files in the Directory: %s " %list)
        temp=datetime.datetime.timestamp(datetime.datetime.now())
        for dir in list:
            if temp > os.stat(dir).st_ctime:
                temp= os.stat(dir).st_ctime
                dirNameTobeDeleted= dir
        if ( dirNameTobeDeleted is not None):
            try:
                shutil.rmtree(dirNameTobeDeleted)
                print("Name of the new Directory deleted: %s" %dirNameTobeDeleted)
            except OSError as e:
                print ("Error in deleting file: %s - %s." % (e.filename, e.strerror))

    os.mkdir(dirName)
    return dirName

def CopyBuildFiles(sourceBuildPath, destinationBuildPath, sourceUnitTestPath,buildLogPath,sourceNUnit):
    shutil.copytree(sourceBuildPath+"\\Release",destinationBuildPath+"\\Release")
    os.chdir(destinationBuildPath+"\\Release")
    os.mkdir("CodeAnalysis")
    for files in os.listdir(destinationBuildPath+"\\Release"):
        if(files.endswith('.xml') | files.endswith('.lastcodeanalysissucceeded')):
            shutil.move(files, destinationBuildPath+"\\Release\\CodeAnalysis\\")
    os.mkdir("UnitTest")       
    os.chdir(sourceUnitTestPath+"\\Release")
    for files in os.listdir(sourceUnitTestPath+"\\Release"):
        if(files.endswith('.xml')| files.endswith('.coveragexml')):
            shutil.move(files, destinationBuildPath+"\\Release\\UnitTest\\")  
            
    os.chdir(destinationBuildPath+"\\Release")        
    os.mkdir("NUnit")       
  
    for files in os.listdir(sourceNUnitpath+"\\Release"):
        if(files.endswith('.xml')| files.endswith('.htm')):
            shutil.move(files, destinationBuildPath+"\\Release\\NUnit\\")          
   
            
    shutil.copytree(sourceBuildPath+"\\Debug",destinationBuildPath+"\\Debug")
    os.chdir(destinationBuildPath+"\\Debug")
    os.mkdir("CodeAnalysis")
    for files in os.listdir(destinationBuildPath+"\\Debug"):
        if(files.endswith('.xml') | files.endswith('.lastcodeanalysissucceeded')):
            shutil.move(files, destinationBuildPath+"\\Debug\\CodeAnalysis\\")
    os.mkdir("UnitTest")    
    os.chdir(sourceUnitTestPath+"\\Debug")        
    for files in os.listdir(sourceUnitTestPath+"\\Debug"):
        if(files.endswith('.xml') | files.endswith('.coveragexml')):
            shutil.move(files, destinationBuildPath+"\\Debug\\UnitTest\\")
            
    os.chdir(sourceNUnit+"\\Debug")         
    os.mkdir("NUnit")    
           
    for files in os.listdir(sourceNUnit+"\\Debug"):
        if(files.endswith('.xml') | files.endswith('.htm')):
            shutil.move(files, destinationBuildPath+"\\Debug\\NUnit\\")        
                    
    
    shutil.move(buildLogPath+"\\DebugbuildLogs.log", destinationBuildPath)
    shutil.move(buildLogPath+"\\ReleasebuildLogs.log", destinationBuildPath)

dirName=CreateBuildDir("C:\\Development\\Build\\CI\\",3)
print("Name of the new Directory created: %s" %dirName)
absoluteNewFilePath= "C:\\Development\\Build\\CI\\" + dirName
CopyBuildFiles("C:\\Development\\Source\\Development\\GlobalShortcutCS.WPF\\bin", absoluteNewFilePath,"C:\\Development\\Source\\Development\\UnitTest\\bin","C:\\Development\\Source\\Development","C:\\Development\\Source\\Development\\NUnitApplication.Test\\bin")