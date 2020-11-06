
// DIALOGS
#define dialog_password 0
#define dialog_alias 1
#define dialog_age 2
#define dialog_state 3
#define dialog_gender 4
#define dialog_height 5
#define dialog_faces 6
// BARS

#define bar_hungry 0
#define bar_thirst 1
#define bar_blister 2
#define bar_tired 3


#define C_MAROON "{872525}"
#define C_BLACK "{000000}"
#define C_GREY "{787575}"
#define C_GREEN "{456538}"
#define C_YELLOW_W "{FEEB8D}"

#define messageBG ""C_MAROON"[BG]"C_YELLOW_W" "
// ================= MYSQL ===============
#define mysql_HOST "127.0.0.1"
#define mysql_USER "root"
#define mysql_DB "serverLocalData_base"
#define mysql_PASS ""

new MySQL:mysql_memory;
// ================ INGRESS DATE ===================

#define INGRESS_TYPE_LOGIN 0
#define INGRESS_TYPE_REGISTER 1
// =============== VIP =====================
#define VIP_TYPE_NORMAL 1
#define VIP_TYPE_MASTER 2
#define VIP_TYPE_ULTRA 3
// ============== FACES =======================
#define GENDER_MALE 1
#define GENDER_FEMALE 2



#define FACE_TYPE_TRABAJADOR 1
#define FACE_TYPE_ENERGETICO 2
#define FACE_TYPE_INTELIGENCIA 3
#define FACE_TYPE_ATLETA 4
#define FACE_TYPE_CULTURAL 5


#define NACIONALITY_TYPE_USA 1
#define NACIONALITY_TYPE_ESPAÑA 2
#define NACIONALITY_TYPE_ITALIA 3
#define NACIONALITY_TYPE_FRANCIA 4
#define NACIONALITY_TYPE_ARGENTINA 5
#define NACIONALITY_TYPE_INGLATERRA 6
#define NACIONALITY_TYPE_RUSIA 7 
#define NACIONALITY_TYPE_CHILE 8
#define NACIONALITY_TYPE_URUGUAY 9
#define NACIONALITY_TYPE_ALEMANIA 10


new skin_type_men[] = {14, 15, 20, 28, 44, 47, 57, 59, 60}; // 8
new skin_type_women[] = {31, 40, 41, 56, 69, 85, 88, 90};