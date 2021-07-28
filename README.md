# active-directory-service-settings
Скрипты для управления службой каталогов Active Dirctory.<br/>
Представленные скрипты создают организационную структуру музея, которая включает в себя следующие части:
*	Администрация (Administration);
*	Отдел фондов (Funds department);
*	Научно-просветительский отдел (Scientific and Educational Department);
*	Научно-экспозиционный отдел (Scientific and Exhibition Department);
*	Информационно-издательский отдел (Information and Publishing Department);
*	Методический центр (Methodological sector);
*	Военно-исторический отдел (Military History Department).


Администрация включает в себя следующие административные группы:
* Account Managers - могут только создавать учетные записи для новых сотрудников и удалять их при необходимости;
* Help desk - могут только разблокировать пользовательские учетные записи в случае их блокировки при неудачном вводе пароля;
* Resource Admins - управляют доступом к информационным ресурсам организации;
* General Admins - обладают полным доступом и контролируют работу администраторов нижних уровней.

## Назначение скриптов
***create_Organizational_Units.ps1*** - создание организационных подразделений.<br/>
***create_Administration_Groups.ps1*** - создание административных групп в специальном организационном подразделении Administration.<br/>
***create_Delete_Users.ps1*** - создание и удаление пользователей в указанной группе/подразделении.<br/>
***create_Groups_Rights.ps1*** - <br/>
***show_Expire_Pass.ps1*** - <br/>
***unlock_In_OU.ps1*** - <br/>
***unlock_User.ps1*** - <br/>
***mount_Disk.bat*** - <br/>
