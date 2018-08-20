$version = $PSVersionTable.PSVersion.Major
if($version -lt 5){
    # Gets hostname and exports it into a shared path for any version less than 5
    hostname | Export-Csv -Append -Path "\\someshare\powershellversion.csv"
}