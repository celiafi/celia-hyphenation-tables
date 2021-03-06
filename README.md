# celia-hyphenation-tables

Celia specific hyphenation tables for the DAISY Pipeline 2

## How to release as github package

- Create file ~/.m2/settings.xml:

```xml
  <settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                      http://maven.apache.org/xsd/settings-1.0.0.xsd">

  <activeProfiles>
    <activeProfile>github</activeProfile>
  </activeProfiles>

  <profiles>
    <profile>
      <id>github</id>
      <repositories>
        <repository>
          <id>central</id>
          <url>https://repo1.maven.org/maven2</url>
        </repository>
        <repository>
          <id>github</id>
          <url>https://maven.pkg.github.com/celiafi/celia-hyphenation-tables</url>
          <snapshots>
            <enabled>true</enabled>
          </snapshots>
        </repository>
      </repositories>
    </profile>
  </profiles>

  <servers>
    <server>
      <id>github</id>
      <username>USERNAME</username>
      <password>TOKEN</password>
    </server>
  </servers>
</settings>
```

- USERNAME should be your github username and TOKEN your personal github access token that you use to push to github.

- For more info on the settings.xml check https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-apache-maven-registry

- Modify version number on pom.xml

- Deploy with command:

```sh
mvn deploy --settings ~/.m2/settings.xml
```

- Local builds can be done with

```sh
mvn clean package
```



