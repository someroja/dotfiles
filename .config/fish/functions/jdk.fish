function jdk -d "Set JDK version for current shell" -a java_version
    set -l version_args
    
    if test -n "$java_version"
        set version_args -v $java_version
    end

    set -gx JAVA_HOME (/usr/libexec/java_home $version_args)
    java --version
end
