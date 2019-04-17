#include<stdio.h>
#include<stdlib.h>
#include<string.h>


struct Model{
    char km[10];
    char type[33];
    char transmission[33];
    char stock[33];
    char drivetrain[33];
    char status[33];
    char fuelecon[33];
    char carModel[33];
    char year[33];
    char trim[33];
    char listOfFeatures[10][33];
}model[50];

struct Maker{
    
    char name[32];
    //struct model makerModel[20];
    
}maker[20];

void DisplayMaker(struct Maker *mak);
void DisplayModel(struct Model * mod);
void add2Catalogue(char km[10], char type[33], char transmission[33], char stock[33], char drivetrain[33], 
                   char status[33], char fuelecon[33], char carModel[33], char year[33],char trim[33]);


int main() {
   strcpy(maker[0].name, "Chevrolet");
   DisplayMaker(&maker[0]);
   
   strcpy(model[0].km, "0km");
   strcpy(model[0].type, "Sedan");
   strcpy(model[0].transmission, "Automatic");
   strcpy(model[0].stock, "1231ND");
   strcpy(model[0].drivetrain, "FWD");
   strcpy(model[0].status, "New");
   strcpy(model[0].fuelecon, "7L/100km");
   strcpy(model[0].carModel, "Malibu");
   strcpy(model[0].year, "2018");
   strcpy(model[0].trim, "SE");
   strcpy(model[0].listOfFeatures[0], "Air Conditioning");
   strcpy(model[0].listOfFeatures[1], "Leather Seats");
   strcpy(model[0].listOfFeatures[2], "Heated Mirrors");
   
   //struct Model model[1] = {"65132km", "Coupe", "Manual", "846KD9", "RWD", "Used", "11L/100km", "Camaro", "2013", "SS"};
   
   strcpy(model[1].km, "65132km");
   strcpy(model[1].type, "Coupe");
   strcpy(model[1].transmission, "Manual");
   strcpy(model[1].stock, "846KD9");
   strcpy(model[1].drivetrain, "RWD");
   strcpy(model[1].status, "Used");
   strcpy(model[1].fuelecon, "11L/100km");
   strcpy(model[1].carModel, "Camaro");
   strcpy(model[1].year, "2013");
   strcpy(model[1].trim, "SS");
   
   
   DisplayModel(&model[0]);
   
  // printf("%d", sizeof(model[0].listOfFeatures[0][0]));
   
   
  // puts(model[0].listOfFeatures[])
  
   
}

void DisplayMaker(struct Maker * mak){
    puts(mak->name);
    
}

void add2Catalogue(char km[10], char type[33], char transmission[33], char stock[33], char drivetrain[33], 
                   char status[33], char fuelecon[33], char carModel[33], char year[33],char trim[33]){
                 
                   }

void DisplayModel(struct Model * mod){
    puts (mod->km);
    puts (mod->type);
    puts (mod->transmission);
    puts (mod->stock);
    puts (mod->drivetrain);
    puts (mod->status);
    puts (mod->fuelecon);
    puts (mod->carModel);
    puts (mod->year);
    puts (mod->trim);
    
    for (int i = 0; i <= sizeof(mod->listOfFeatures[0][0]); i++){
   //     printf("%d ", i);
   for (int j = i; j <= sizeof(mod->listOfFeatures[0][0]); j++){
       printf("%s, ", mod->listOfFeatures[i]);
        }
    }
}
