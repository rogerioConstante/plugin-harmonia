	//=========================================================================================\\ 
//  Harmonia v0.12ms3                                                                         \\
//                                                                                         \\
//  Copyright (C)2018 Rogério Tavares Constante                                            \\
//                                                                                         \\
//  Este programa é um software livre: você pode redistribuir e/ou  modificar              \\
//  ele nos termos da GNU General Public License como publicada pela                       \\
//  Free Software Foundation, seja na versão 3 da licença, ou em qualquer outra posterior. \\
//                                                                                         \\
//  Este programa é distribuído com a intenção de que seja útil,                           \\
//  mas SEM NENHUMA GARANTIA; Veja a GNU para mais detalhes.                               \\
//                                                                                         \\
//  Uma cópia da GNU General Public License pode ser encontrada em                         \\
//  <http://www.gnu.org/licenses/>.                                                        \\
//                                                                                         \\
//=========================================================================================\\

import QtQuick 2.3
import QtQuick.Controls 1.3
import QtQuick.Dialogs 1.2
import QtQuick.Window 2.1
import MuseScore 3.0

MuseScore {
      menuPath: "Plugins.Harmonia"
      description: "Harmonia.\nPlugin de auxílio na correção de encadeamentos harmônicos."
      version: "0.12ms3"
 
// ----------------------------- janela de configuração ----------------------- 

  ApplicationWindow {
    id: window
    visible: true
    title: "Harmonia"
    width: 667; height: 580
    color: "#000022"
    
    // ------------------------------ barra superior --------------------------
    Rectangle {
            id: menu
            width: 664; height: 30
            color: "#091a23"
            border.color: "#383d47"
            border.width: 1
            x: 1            
          Row { 
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left; anchors.leftMargin: 3
            spacing: 5
            
            Rectangle { // condução de vozes
             id: botao1
             property string text: "Condução de vozes"
             signal clicked
             width: bLabel1.width + 20; height: bLabel1.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2
             gradient: Gradient {
               GradientStop {
                  position: 0.0
                  color: {
                        if (mArea1.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
                   }
               GradientStop { position: 1.0; color: "#334455" }
             }
             onClicked: { condução.visible = true; bLabel1.color = "#002e77"; 
                          dissonancia.visible = false; bLabel2.color = "#000000"; 
                          melodia.visible = false; bLabel23.color = "#000000";
                          textura.visible = false; bLabel24.color = "#000000";
                          acordes.visible = false; bLabel25.color = "#000000";}
             MouseArea {
                  id: mArea1
                   anchors.fill: parent
                   onClicked: botao1.clicked();
             }

             Text {
             id: bLabel1
             anchors.centerIn: botao1
             color: "#000000"
             text: botao1.text
             }
            }
            
            Rectangle { // tratamento de dissonâncias
             id: botao2
             property string text: "Tratamento de dissonâncias"
             signal clicked
             width: bLabel2.width + 20; height: bLabel2.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea2.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }
            onClicked: { dissonancia.visible = true; bLabel2.color = "#002e77"; 
                         condução.visible = false; bLabel1.color = "#000000"; 
                         melodia.visible = false; bLabel23.color = "#000000"; 
                         textura.visible = false; bLabel24.color = "#000000";
                         acordes.visible = false; bLabel25.color = "#000000";}
            MouseArea {
                  id: mArea2
                   anchors.fill: parent
                   onClicked: botao2.clicked();
             }

            Text {
             id: bLabel2
             anchors.centerIn: botao2
             color: "#000000"
             text: botao2.text
                  }
            }
            
            Rectangle { // melodia
             id: botao23
             property string text: "Melodia"
             signal clicked
             width: bLabel23.width + 20; height: bLabel23.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea23.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }
            onClicked: { melodia.visible = true; bLabel23.color = "#002e77";
            				 acordes.visible = false; bLabel25.color = "#000000";
            				 dissonancia.visible = false; bLabel2.color = "#000000"; 
            				 condução.visible = false; bLabel1.color = "#000000"; 
            				 textura.visible = false; bLabel24.color = "#000000";}
            MouseArea {
                  id: mArea23
                   anchors.fill: parent
                   onClicked: botao23.clicked();
             }

            Text {
             id: bLabel23
             anchors.centerIn: botao23
             color: "#000000"
             text: botao23.text
                  }
            }
            
            Rectangle { // Textura
             id: botao24
             property string text: "Textura"
             signal clicked
             width: bLabel24.width + 20; height: bLabel24.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea24.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }
            onClicked: { textura.visible = true; bLabel24.color = "#002e77";
            				 acordes.visible = false; bLabel25.color = "#000000";
            				 melodia.visible = false; bLabel23.color = "#000000";
            				 dissonancia.visible = false; bLabel2.color = "#000000"; 
            				 condução.visible = false; bLabel1.color = "#000000"; }
            MouseArea {
                  id: mArea24
                   anchors.fill: parent
                   onClicked: botao24.clicked();
             }

            Text {
             id: bLabel24
             anchors.centerIn: botao24
             color: "#000000"
             text: botao24.text
                  }
            }
            
             Rectangle { // Acordes
             id: botao25
             property string text: "Acordes"
             signal clicked
             width: bLabel25.width + 20; height: bLabel25.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea25.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }
            onClicked: { acordes.visible = true; bLabel25.color = "#002e77";
            				 textura.visible = false; bLabel24.color = "#000000";
            				 melodia.visible = false; bLabel23.color = "#000000";
            				 dissonancia.visible = false; bLabel2.color = "#000000"; 
            				 condução.visible = false; bLabel1.color = "#000000"; }
            MouseArea {
                  id: mArea25
                   anchors.fill: parent
                   onClicked: botao25.clicked();
             }

            Text {
             id: bLabel25
             anchors.centerIn: botao25
             color: "#000000"
             text: botao25.text
                  }
            }
         }
      
    }
        
    // ------------------------------ barra inferior --------------------------
    Rectangle {
            id: barraInferior
            y: 550
            width: 664; height: 30
            color: "#091a23"
            border.color: "#383d47"
            border.width: 1
            x: 1
       
        Text { x: 6; y: 4; font.pointSize: 7; color: "#aaa31e"; text: "criado por" } 
        Text { x: 5; y: 13; font.pointSize: 9; color: "#aaa31e"; text: "Rogério Tavares Constante" }
        Text { x: 633; y: 10; font.pointSize: 9; color: "#aaa31e"; text: "2018" }
 
       Rectangle {
             id: btVerifica
             property string text: "Verificar"
             signal clicked
             anchors.verticalCenter: parent.verticalCenter
             anchors.right: parent.horizontalCenter //; anchors.leftMargin: 3
             width: bLabel3.width + 20; height: bLabel3.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea3.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }

            MouseArea {
                  id: mArea3
                   anchors.fill: parent
                   onClicked: { msgResult.close(); window.lower(); verificar(); }
             }

            Text {
             id: bLabel3
             anchors.centerIn: btVerifica
             color: "#000000"
             text: btVerifica.text
                  }
            }
   
         
         Rectangle {
             id: btFechar
             property string text: "Fechar"
             signal clicked
             anchors.verticalCenter: parent.verticalCenter
             anchors.left: parent.horizontalCenter; anchors.leftMargin: 3
             width: bLabel4.width + 20; height: bLabel4.height + 7
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea4.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#334455" }
            }
            
            MouseArea {
                  id: mArea4
                   anchors.fill: parent
                   onClicked: { Qt.quit(); window.close(); msgResult.close(); }
             }

            Text {
             id: bLabel4
             anchors.centerIn: btFechar
             color: "#000000"
             text: btFechar.text
                  }
            }
        }
    // ------------------------------ Apresentação ---------------------------    
 Item { id: apresenta; visible: true
    
    Text { x: 195; y: 250; font.pointSize: 24; color: "#aaa31e"; text: "Harmonia" }
    Text { x: 196; y: 282; font.pointSize: 9; color: "#aaa31e"; text: "Extensão para MuseScore" } 
  
 }   
    // ------------------------------ configurações gerais --------------------------
 Item { id: configura; visible: true;

    Rectangle { x: 513; y: 35; width: 150; height: 512;	color: "#3d0909"; radius: 2 
      
      Text { x: 3; y: 5; color: "#d1d10a"; text: "Configurações Gerais" }

      Rectangle { id: tonalidade; 
                  x: 5; y: 40; width: 140; height: 125; color: "#260000"; radius: 2 
         
         Text { x: 5; y: 5; color: "#f9ff8c"; font.pixelSize: 15; text: "Tonalidade:" }
      
          Button {
	       	id: btTonica
	         text: "Dó"
	         width: 60
	         menu: menuTonica  
	         x: 5; y: 30
	         Text { x: 65; color: "#fcffbc"; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13; text: "Tônica" }   
          } 
	          
	     
	       Button {
	       	id: btAcid
	         text: ""
	         width: 50
	         menu: menuAcid 
	         x: 5; y: 60
	         Text { x: 55; color: "#fcffbc"; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13; text: "Acidente" }    
	       } 
	       
	       Button {
	       	id: btModo
	         text: "Maior"
	         width: 90
	         menu: menuModo
	         x: 5; y: 90
	         Text { x: 95; color: "#fcffbc"; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13; text: "Modo" }   
	       } 
		       
		       
	       Menu {
	       	id: menuTonica
	       	property int value: 1
	    		    	MenuItem { text: "Dó"; onTriggered: { menuTonica.value = 1; btTonica.text = "Dó" } } 
				    	MenuItem { text: "Ré"; onTriggered: { menuTonica.value = 2; btTonica.text = "Ré" } } 
				    	MenuItem { text: "Mi"; onTriggered: { menuTonica.value = 3; btTonica.text = "Mi" } } 
				    	MenuItem { text: "Fá"; onTriggered: { menuTonica.value = 4; btTonica.text = "Fá" } } 
				    	MenuItem { text: "Sol"; onTriggered: { menuTonica.value = 5; btTonica.text = "Sol" } } 
				    	MenuItem { text: "Lá"; onTriggered: { menuTonica.value = 6; btTonica.text = "Lá" } } 
				    	MenuItem { text: "Si"; onTriggered: { menuTonica.value = 7; btTonica.text = "Si" } } 
				 } 
				  
		   Menu {
	       	id: menuAcid
	       	property string value: ""
	    		    	MenuItem { text: "Natural"; onTriggered: { menuAcid.value = 1; btAcid.text = "" } } 
				    	MenuItem { text: "#"; onTriggered: { menuAcid.value = 2; btAcid.text = "#" } } 
				    	MenuItem { text: "b"; onTriggered: { menuAcid.value = 3; btAcid.text = "b" } } 
				 }  
			
			Menu {
	       	id: menuModo
	       	property string value: "Maior"
	    		    	MenuItem { text: "Maior"; onTriggered: { menuModo.value = 1; btModo.text = "Maior" } } 
				    	MenuItem { text: "Menor"; onTriggered: { menuModo.value = 2; btModo.text = "Menor" } } 
				 }  
		      
      
      }
      
      /*Rectangle { id: polifonico; 
                  x: 5; y: 80; width: 265; height: 50; color: "#755a5a"; radius: 2 
         
         Text { x: 5; y: 15; color: "#d1d10a"; text: "Modo de escrita:" }
         
         RadioButton { id: poli; checked: true; x: 140; y: 5;  
            onClicked: { if (homo.checked) {homo.checked = false}}                         
	          Text { anchors.left: parent.right; anchors.verticalCenter: parent.verticalCenter; color: "#cece7b"; text: "Polifônica" }      
	      }
	      
	      RadioButton { id: homo; checked: false; x: 140; y: 25; 
	        onClicked: { if (poli.checked) {poli.checked = false}}                          
	          Text { anchors.left: parent.right; anchors.verticalCenter: parent.verticalCenter; color: "#cece7b"; text: "Homofônica" }      
	      }
      }*/
    
      Rectangle { id: preConfigurações; x: 5; y: 200; width: 140; height: 170; color: "#260000"; radius: 2 
                
          Text { x: 5; y: 5; color: "#f9ff8c"; font.pixelSize: 15; text: "Pré-configurações:" }
          
        Rectangle { x: 4; y: 30; width: 132; height: 22; color: "#9c9c9c"; radius: 2 
         Rectangle { x: 1; y: 1; width: 130; height: 20; color: "#0c0000"; radius: 2 
          Text { id: nomePre; x: 5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; color: "#d1d10a"; text: "sem nome" }
         }
        }
            Rectangle { 
             id: salvarCnfiguração
             property string text: "Salvar"
             signal clicked
             x: 5; y: 70; width: 130; height: 40
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea41.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#5b2b2b" }
            }

            MouseArea {
                  id: mArea41
                   anchors.fill: parent
                   onClicked: { saveFileDialog.open(); }
             }

            Text {
             id: bLabel41
             anchors.centerIn: salvarCnfiguração
             color: "#101010"
             font.pointSize: 13
             text: salvarCnfiguração.text
                  }
            }
            
            Rectangle {
             id: carregarCnfiguração
             property string text: "Carregar"
             signal clicked
             x: 5; y: 120; width: 130; height: 40
             border { width: 1; color: "#555555" }
             smooth: true
             radius: 2        
             gradient: Gradient {
              GradientStop {
                  position: 0.0
                  color: {
                        if (mArea42.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#5b2b2b" }
            }

            MouseArea {
                  id: mArea42
                   anchors.fill: parent
                   onClicked: { openFileDialog.open(); }
             }

            Text {
             id: bLabel42
             anchors.centerIn: carregarCnfiguração
             color: "#101010"
             font.pointSize: 13
             text: carregarCnfiguração.text
                  }
            } 
      }  
    }
}     // ------------------------------ verificações -----------------------------------             
 Item { id: condução; visible: false;
 
   Rectangle { x: 5; y: 35; width: 500; height: 512;	color: "#2b313a"; radius: 2 
     // todas as vozes na mesma direção
     Rectangle { id: item; x: 5; y: 3; width: 490; height: 25;	color: "#627fad"; radius: 2 
     
       CheckBox { id: mesmaDir; checked: true; x: 5; y: 3;                           
	      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter ; font.pixelSize: 14; text: "Todas as vozes na mesma direção" } 
	      CheckBox { id: mDirAcor; checked: true; x: 265; y: 0; 
	        Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se não muda de acorde" } }
	    }
	  }
	  
     // paralelas    
	  Rectangle { id: item1; x: 5; y: 31; width: 490; height: 160;	color: "#627fad"; radius: 2 
	  	     
	     CheckBox { id: paralela8; checked: true; x: 5; y: 5;                           
	       Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "8ª paralela" }      
	       Text { id: par8RepTxt; x: 5; y: 20; font.pixelSize: 12; text: "- se sequência de paralelas for maior do que" } 
		     TextInput { id: par8Rep; anchors.left: par8RepTxt.right; anchors.leftMargin: 5; y: par8RepTxt.y; font.underline: true; text: "0"; font.pixelSize: 12; color: "white"; validator: IntValidator{bottom: 0; top: 99;} }
		    CheckBox { id: paral8Ext; checked: false; x: 185; y: 0; 
			  Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter ; font.pixelSize: 12; text: "Somente se em vozes externas" } }
	     }  
	      
	     CheckBox { id: paralela5; checked: true; x: 5; y: 42;                          
	       Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "5ª paralela" }      
	       Text { id: par5RepTxt; x: 5; y: 20; font.pixelSize: 12; text: "- se sequência de paralelas for maior do que" } 
		     TextInput { id: par5Rep; anchors.left: par5RepTxt.right; anchors.leftMargin: 5; y: par5RepTxt.y; font.underline: true; text: "0"; font.pixelSize: 12; color: "white"; validator: IntValidator{bottom: 0; top: 99;} } 
	       CheckBox { id: paral5Ext; checked: false; x: 185; y: 0; 
			  Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter ; font.pixelSize: 12; text: "Somente se em vozes externas" } }
	     }     
	    
	     CheckBox { id: paralela4; checked: false; x: 5; y: 84;                           
	      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "4ªJ paralela" } 
	      Text { id: par4RepTxt; x: 5; y: 20; font.pixelSize: 12; text: "- se sequência de paralelas for maior do que" }
	       TextInput { id: par4Rep; anchors.left: par4RepTxt.right; anchors.leftMargin: 5; y: par4RepTxt.y; font.underline: true; text: "0"; font.pixelSize: 12; color: "white"; validator: IntValidator{bottom: 0; top: 99;} }     
	      CheckBox { id: paral4Ext; checked: false; x: 185; y: 0; 
		    Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se em vozes externas" }
	       }
	      }
	       
	     CheckBox { id: paralela36; checked: false; x: 5; y: 122;                           
	      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "3ª e 6ª paralela" } 
	      Text { id: par36RepTxt; x: 5; y: 20;font.pixelSize: 12; text: "- se sequência de paralelas for maior do que" } 
	       TextInput { id: par36Rep; anchors.left: par36RepTxt.right; anchors.leftMargin: 5; y: par36RepTxt.y; font.underline: true; text: "0"; font.pixelSize: 12;  color: "white"; validator: IntValidator{bottom: 0; top: 99;} }     
	      CheckBox { id: paral36Ext; checked: false; x: 185; y: 0; 
		    Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter ; font.pixelSize: 12; text: "Somente se em vozes externas" }
	       }
	      }  
	  }  
	     
	   // ocultas
	   Rectangle { id: item2; x: 5; y: 194; width: 490; height: 60; color: "#627fad"; radius: 2 
	      
	     CheckBox { id: oculta8; checked: true; x: 5; y: 8; 
	       onClicked: {if (!oculta8.checked && !oculta5.checked) { ocultAsc.checked = false; ocultExt.checked = false; ocultSalto.checked = false;}}                     
	          Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "8ª oculta ou direta" }      
	      }
	      
	     CheckBox { id: oculta5; checked: true; x: 5; y: 34; 
	       onClicked: {if (!oculta8.checked && !oculta5.checked) { ocultAsc.checked = false; ocultExt.checked = false; ocultSalto.checked = false;}}                        
	          Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "5ª oculta ou direta" }      
	      }
	   
			     CheckBox { id: ocultAsc; checked: false; x: 190; y: 3;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se movimento ascendente" }
			 		}
			 					 		
			 	  CheckBox { id: ocultExt; checked: true; x: 190; y: 21; 
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se vozes externas" }
			 		}
			 		
			 	  CheckBox { id: ocultSalto; checked: true; x: 190; y: 39; 
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se salto na voz superior" }
			 		} 
		  }
			 		    
	     // consecutivas por movimento contrário e oblíquo    
	   Rectangle { id: item3; x: 5; y: 257; width: 490; height: 49;	color: "#627fad"; radius: 2 
	  	     
	     CheckBox { id: consecObli; checked: false; x: 5; y: 3;                        
	          Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "5ª e 8ª consecutivas oblíquo" }      
	      }
	      	
			CheckBox { id: consecCont; checked: false; x: 5; y: 26;  	   
		     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "5ª e 8ª consecutivas contrário" }
		 		}
		 		
		 		 CheckBox { id: consecExt; checked: false; x: 260; y: 15; 
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se em vozes externas" }
			 		}
		}
			 		
		 // cruzamento de vozes && overlapping && uníssono
		 
	   Rectangle { id: item4; x: 5; y: 309; width: 490; height: 82; color: "#627fad"; radius: 2 
		 	 	
				CheckBox { id: cruzaVozes; checked: true; x: 5; y: 2                         
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Cruzamento de vozes" }      
			     CheckBox { id: cruzaExt; checked: false; x: 185; y: 0;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se cruzar por vozes externas" } }
			   }
			   
			   CheckBox { id: overlap; checked: true; x: 5; y: 22                         
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Overlapping" }      
			   }	
			   
			   CheckBox { id: uniss; checked: true; x: 5; y: 42                         
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Uníssono" }      
			   }
			   
			   CheckBox { id: falsaR; checked: true; x: 5; y: 62                         
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Falsa relação" }      
			   }	     
		}
			 		
		 // resolução das sensíveis
		Rectangle { id: item5; x: 5; y: 394; width: 490; height: 114; color: "#627fad"; radius: 2 
		 	 	
				CheckBox { id: resolvSens; checked: true; x: 5; y: 19  
				  onClicked: { if (!resolvSens.checked) { sensivelExt.checked = false; sensivelVI.checked = false; sensivelVvi.checked = false; } 
				  					else { sensivelExt.checked = true; sensivelVI.checked = true;} }
				                          
			          Text { id:rSens; anchors.left: parent.right;  anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14;text: "Resolução" }  
			          Text { id:res7; anchors.left: rSens.right; anchors.leftMargin: 5; y: rSens.y; font.pixelSize: 14; text: "7 - " }  
			          Text { anchors.bottom: res7.top; anchors.bottomMargin: -8; x: res7.x; text: "^" } 
			          Text { id:res1; anchors.left: res7.right; y: rSens.y; font.pixelSize: 14; text: "1" }  
			          Text { anchors.bottom: res1.top; anchors.bottomMargin: -8; x: res1.x; text: "^" }    
			     			      
			     			    
			     CheckBox { id: sensivelExt; checked: true; x: 185; y: -17;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente na voz superior" }
			 		} 
			 	  CheckBox { id: sensivelVI; checked: true; x: 185; y: 0;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se V-I ou vii°-I" }
			 		}
			 	  CheckBox { id: sensivelVvi; checked: true; x: 185; y: 17;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se V-vi ou vii°-vi" }
			 		}
			  }
			  
			  CheckBox { id: res43; checked: false; x: 5; y: 77 
				  onClicked: { if (!res43.checked) { res43Ext.checked = false; res43VI.checked = false; res43Vvi.checked = false; } 
				  					else { res43Ext.checked = true; res43VI.checked = true; } }                       
			          Text { id:resTxt; anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Resolução" } 
			          Text { id:res4; anchors.left: resTxt.right; anchors.leftMargin: 5; y: resTxt.y; font.pixelSize: 14; text: "4 - " }  
			          Text { anchors.bottom: res4.top; anchors.bottomMargin: -8; x: res4.x; text: "^" } 
			          Text { id:res3; anchors.left: res4.right; y: resTxt.y; font.pixelSize: 14; text: "3" }  
			          Text { anchors.bottom: res3.top; anchors.bottomMargin: -8; x: res3.x; text: "^" }    
			     			    
			     CheckBox { id: res43Ext; checked: false; x: 185; y: -17;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente na voz superior" }
			 		} 
			 	  CheckBox { id: res43VI; checked: false; x: 185; y: 0;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se V7-I" }
			 		}
			 	  CheckBox { id: res43Vvi; checked: false; x: 185; y: 17;   
			     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se V7-vi" }
			 		}
			  }
		 } 
    }  
  }  
 Item { id: dissonancia; visible: false; 
 
   Rectangle { x: 5; y: 35; width: 500; height: 512;	color: "#12280c"; radius: 2 
     // segunda inversão     
     Rectangle { id: item6; x: 10; y: 5; width: 480; height: 60; color: "#769b6c"; radius: 2 
	      
	     CheckBox { id: segInvDiss; checked: true; x: 5; y: 20;
	       onClicked: {if (segInvDiss.checked){segInvConj.checked = true; segInvArp.checked = true; segInvPara.checked = true;} else
	       						                  {segInvConj.checked = false; segInvArp.checked = false; segInvPara.checked = false;}}                   
	        Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "2ª inversão" }      
	       
		     CheckBox { id: segInvConj; checked: true; x: 135; y: -18;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto quando baixo move por grau conjunto" }
		 	  }
		 					 		
		 	  CheckBox { id: segInvArp; checked: true; x: 135; y: 0; 
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto quando em arpejo do baixo" }
		 	  }
		 		
		 	  CheckBox { id: segInvPara; checked: true; x: 135; y: 18; 
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto quando baixo não se move" }
		 	  } 
		  }
	   }
	   
	  // dissonâncias     
     Rectangle { id: item7; x: 10; y: 70; width: 480; height: 248; color: "#769b6c"; radius: 2 
	      
	     CheckBox { id: dissonancias; checked: true; x: 5; y: 76;               
	        Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Dissonâncias" }      
	       
		     CheckBox { id: dissSusp; checked: true; x: 135; y: -72;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se suspensão" }
		 	  }
		 					 		
		 	  CheckBox { id: dissNP; checked: false; x: 135; y: -54; 
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se nota de passagem" }
		 	  }
		 	  
		 	  CheckBox { id: dissBordS; checked: false; x: 135; y: -36; 
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se bordadura superior" }
		 	  }
		 	  
		 	  CheckBox { id: dissBordI; checked: false; x: 135; y: -18; 
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se bordadura inferior" }
		 	  }
		 	  
		 	  CheckBox { id: dissAp; checked: false; x: 135; y: 0;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se apojatura" }
		 	  }
		 	  
		 	  CheckBox { id: dissRet; checked: false; x: 135; y: 18;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se retardo" }
		 	  }
		 	  
		 	  CheckBox { id: dissAnt; checked: false; x: 135; y: 36;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se antecipação" }
		 	  }
		 	  
		 	  CheckBox { id: dissEsc; checked: false; x: 135; y: 54;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se escapada" }
		 	  }
		 	  
		 	  CheckBox { id: dissPed; checked: false; x: 135; y: 72;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se nota pedal" }
		 	  }
		 	  
		 	  CheckBox { id: dissRes; checked: false; x: 135; y: 90;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se resolução por grau conjunto desc." }
		 	  }
		 	}
		 	  
		 	CheckBox { id: dissDiss; checked: true; x: 5; y: 198;   
		     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Dissonância preparada ou resolvida por outra dissonância" }
		 	 
		 	  CheckBox { id: dDissB; checked: false; x: 135; y: 20;   
		      Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente se na voz inferior" }
		 	  } 
		 	}
		 		
		  
	   }
    }
  }  
 Item { id: melodia; visible: false; 
   
   Rectangle { x: 5; y: 35; width: 500; height: 512;	color: "#39420b"; radius: 2 
   
    Rectangle { id: item8; x: 10; y: 3; width: 480; height: 272; color: "#84832e"; radius: 2
    
     CheckBox { id: melAum; checked: true; x: 5; y: 5;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Intervalos aumentados" }
	  }
	  
	  CheckBox { id: melDim; checked: true; x: 5; y: 30;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Intervalos diminutos" }
		CheckBox { id: melDimMuda; checked: true; x: 120; y: 20;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se mudar de direção por grau conjunto" }
		}
	  }
	  
	  CheckBox { id: mel7; checked: true; x: 5; y: 80;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Saltos de sétima" }
	  }
	  
	  CheckBox { id: mel8; checked: true; x: 5; y: 105;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Saltos maiores do que oitava" }
	  }
	  
	  CheckBox { id: mel4; checked: true; x: 5; y: 130;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Saltos maiores do que quarta justa" }
		CheckBox { id: mel4Op; checked: true; x: 120; y: 19; 
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Se não for atingido na direção oposta" }
		}
		CheckBox { id: mel4r; checked: false; x: 120; y: 37;  
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Se não for resolvido na direção oposta" }
		}
		CheckBox { id: mel4cj; checked: true; x: 120; y: 55;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Se não for resolvido por grau conjunto" }
		}
	  }  
	  
	  CheckBox { id: mel2Salt; checked: true; x: 5; y: 206;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Saltos consecutivos na mesma direção" }
		CheckBox { id: mel2tri; checked: true; x: 120; y: 20;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Exceto se delinear tríade" }
		}
	  }
	  
	  CheckBox { id: melDC; checked: false; x: 5; y: 250;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Dissonância composta" }
	  }
	  
    }
    
    Rectangle { id: item81; x: 10; y: 279; width: 480; height: 54; color: "#84832e"; radius: 2
    // Text { x: 5; y: 5; text: "Ponto Focal (vozes externas)" }
     
     CheckBox { id: melPFs; checked: true; x: 5; y: 5;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Ponto focal superior" }
		CheckBox { id: melPFsS; checked: false; x: 280; y: 0;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente voz superior" }
		}
	  }
	  
	  CheckBox { id: melPFi; checked: true; x: 5; y: 30;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Ponto focal inferior" }
		CheckBox { id: melPFiS; checked: false; x: 280; y: 0;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Somente voz superior" }
		}
	  }
    }
    
    Rectangle { id: item82; x: 10; y: 337; width: 480; height: 116; color: "#84832e"; radius: 2
     //Text { x: 5; y: 5; text: "Variedade melódica" }
     
     CheckBox { id: varDir; checked: true; x: 5; y: 5;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Variedade de direcionamentos" }
		Text { id: varDirTxt; x: 5; y: 20; anchors.leftMargin: -5; font.pixelSize: 12; text: "- até" } 
		TextInput { id: varDirQt; anchors.left: varDirTxt.right; anchors.leftMargin: 5; y: varDirTxt.y; font.underline: true; font.pixelSize: 12; color: "white"; text: "4"; validator: IntValidator{bottom: 0; top: 99;} }
		Text { anchors.left: varDirQt.right; anchors.leftMargin: 5; y: varDirQt.y; font.pixelSize: 12; text: "movimentos na mesma direção" }     
	  }
	  
	  CheckBox { id: repNota; checked: true; x: 5; y: 40;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14;text: "Repetição de notas" }
		Text { id: repNotaTxt; x: 5; y: 20; anchors.leftMargin: -5; font.pixelSize: 12; text: "- até" } 
		TextInput { id: repNotaQt; anchors.left: repNotaTxt.right; anchors.leftMargin: 5; y: repNotaTxt.y; font.underline: true; font.pixelSize: 12; color: "white"; text: "4"; validator: IntValidator{bottom: 0; top: 99;} }
		Text { anchors.left: repNotaQt.right; anchors.leftMargin: 5; y: repNotaQt.y; font.pixelSize: 12; text: "repetições" } 
	  }
	  
	  CheckBox { id: repPad; checked: true; x: 5; y: 75;   
		Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Repetição de padrões" }
		Text { id: repPadTxt; x: 5; y: 20; anchors.leftMargin: -5; font.pixelSize: 12; text: "- até" } 
		TextInput { id: repPadQt; anchors.left: repPadTxt.right; anchors.leftMargin: 5; y: repPadTxt.y; font.underline: true; font.pixelSize: 12; color: "white"; text: "2"; validator: IntValidator{bottom: 0; top: 99;} }
		Text { anchors.left: repPadQt.right; anchors.leftMargin: 5; y: repPadQt.y; font.pixelSize: 12; text: "repetições" } 
	  }
    
     CheckBox { id: varMelS; checked: true; x: 285; y: 20;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Na voz superior" }
		}
	  CheckBox { id: varMelI; checked: false; x: 285; y: 45;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Nas vozes internas" }
		}
	  CheckBox { id: varMelG; checked: true; x: 285; y: 70;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Na voz inferior" }
		}
	  }
	  
	  Rectangle { id: item83; x: 10; y: 457; width: 480; height: 52; color: "#84832e"; radius: 2
	     CheckBox { id: extMel; checked: true; x: 5; y: 11;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Extensão das melodias" }
		   Text { id: extMeltxt; x: 5; y: 20; anchors.leftMargin: -5; font.pixelSize: 12; text: "- até" } 
		   TextInput { id: extMelQt; anchors.left: extMeltxt.right; anchors.leftMargin: 5; y: extMeltxt.y; font.underline: true; font.pixelSize: 12; color: "white"; text: "12"; validator: IntValidator{bottom: 0; top: 99;} }
		   Text { anchors.left: extMelQt.right; anchors.leftMargin: 5; y: extMelQt.y; font.pixelSize: 12; text: "semitons" } 
	     }
	  CheckBox { id: extMelS; checked: true; x: 285; y: 1;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Na voz superior" }
		}
	  CheckBox { id: extMelI; checked: false; x: 285; y: 17;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Nas vozes internas" }
		}
	  CheckBox { id: extMelG; checked: true; x: 285; y: 33;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12; text: "Na voz inferior" }
		}
	  
	  }
   }  
  }
  
 Item { id: textura; visible: false; 
   Rectangle { x: 5; y: 35; width: 500; height: 512;	color: "#66632a"; radius: 2 
     Rectangle { id: item9; x: 10; y: 5; width: 480; height: 70; color: "#f9f59a"; radius: 2
       
      CheckBox { id: espaço; checked: true; x: 5; y: 5;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Espaçamento máximo" }
		 
		 Text { id: espTxt1; x: 35; y: 25; anchors.leftMargin: -5; font.pixelSize: 12; text: "Entre as vozes superiores:" }  
		 TextInput { id: espS; anchors.left: espTxt1.right; anchors.leftMargin: 5; y: espTxt1.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "12"; validator: IntValidator{bottom: 0; top: 99;}} 
		 Text { anchors.left: espS.right; anchors.leftMargin: 5; y: espS.y; font.pixelSize: 12; text: "semitons" } 
		
		 Text { id: espTxt2; x: 35; y: 45; anchors.leftMargin: -5; font.pixelSize: 12; text: "Entre baixo e tenor:" }  
		 TextInput { id: espB;  anchors.left: espTxt2.right; anchors.leftMargin: 5; y: espTxt2.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "24"; validator: IntValidator{bottom: 0; top: 99;}} 
		 Text { anchors.left: espB.right; anchors.leftMargin: 5; y: espB.y; font.pixelSize: 12; text: "semitons" } 
		 
	   }
	    
	  }
	  
	  Rectangle { id: item91; x: 10; y: 80; width: 480; height: 110; color: "#f9f59a"; radius: 2
	   
	   CheckBox { id: extens; checked: true; x: 5; y: 5;   
		 Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 14; text: "Extensão vocal" }
		 
		 Text { id: sopTxt1; x: 35; y: 25; anchors.leftMargin: -5; font.pixelSize: 12; text: "Soprano:" } 
		 TextInput { id: sop1; anchors.left: sopTxt1.right; anchors.leftMargin: 5; y: sopTxt1.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "C3"; } 
		 Text { id: sopTxt2; anchors.left: sop1.right; anchors.leftMargin: 5; y: sop1.y; font.pixelSize: 12; text: "a" } 
		 TextInput { id: sop2; anchors.left: sopTxt2.right; anchors.leftMargin: 5; y: sopTxt2.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "A4"; }
		 Text { anchors.left: sop2.right; anchors.leftMargin: 5; y: sop2.y; font.pixelSize: 12; text: "(C3 = dó central)" } 
		 
		 Text { id: altoTxt1; x: 35; y: 45; anchors.leftMargin: -5; font.pixelSize: 12; text: "Contralto:" }   
		 TextInput { id: alto1; anchors.left: altoTxt1.right; anchors.leftMargin: 5; y: altoTxt1.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "F2"; } 
		 Text { id: altoTxt2; anchors.left: alto1.right; anchors.leftMargin: 5; y: alto1.y; font.pixelSize: 12; text: "a" } 
		 TextInput { id: alto2; anchors.left: altoTxt2.right; anchors.leftMargin: 5; y: altoTxt2.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "D4"; }
		 
		 Text { id: tenTxt1; x: 35; y: 65; anchors.leftMargin: -5; font.pixelSize: 12; text: "Tenor:" }  
		 TextInput { id: ten1; anchors.left: tenTxt1.right; anchors.leftMargin: 5; y: tenTxt1.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "B1"; } 
		 Text { id: tenTxt2; anchors.left: ten1.right; anchors.leftMargin: 5; y: ten1.y; font.pixelSize: 12; text: "a" } 
		 TextInput { id: ten2; anchors.left: tenTxt2.right; anchors.leftMargin: 5; y: tenTxt2.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "G3";}
		 
		 Text { id: bxoTxt1; x: 35; y: 85; anchors.leftMargin: -5; font.pixelSize: 12; text: "Baixo:" }  
		 TextInput { id: bxo1; anchors.left: bxoTxt1.right; anchors.leftMargin: 5; y: bxoTxt1.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "E1"; } 
		 Text { id: bxoTxt2; anchors.left: bxo1.right; anchors.leftMargin: 5; y: bxo1.y; font.pixelSize: 12; text: "a" } 
		 TextInput { id: bxo2; anchors.left: bxoTxt2.right; anchors.leftMargin: 5; y: bxoTxt2.y; font.underline: true; font.pixelSize: 12; color: "blue"; text: "C3"; }
		 
	   } 
     
     }
   }
 } 
 Item { id: acordes; visible: false; 
   Rectangle { x: 5; y: 35; width: 500; height: 512;	color: "#5b5b5b"; radius: 2 
    Rectangle { id: item10; x: 10; y: 5; width: 480; height: 215; color: "#303030"; radius: 2
     
		 Text { x: 5; y: 5; font.pixelSize: 14; color: "#e0dfc3"; text: "Dobramentos e omissões" }
		 
		 CheckBox { id: sem3; checked: true; x: 10; y: 30;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13;
		   color: "#e0dfc3"; text: "Se omitir a terça, em textura de 3 ou mais vozes" }
		 }
		 
		 CheckBox { id: pc3; checked: true; x: 10; y: 55;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13;
		   color: "#e0dfc3"; text: "Acordes com menos de 3 PCs, em textura de 4 ou mais vozes" }
		 } 
		 
		 CheckBox { id: triadesDobra3; checked: true; x: 10; y: 80;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13;
		   color: "#e0dfc3"; text: "Tríades consonantes com a 3ª dobrada" }
		 } 
		 
		 CheckBox { id: dobra7; checked: true; x: 10; y: 105;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13; 
		   color: "#e0dfc3"; text: "Acordes com a 7ª dobrada" }
		 } 
		 
		 CheckBox { id: dobraSens; checked: true; x: 10; y: 130;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13;
		   color: "#e0dfc3"; text: "Acordes com a sensível dobrada" }
         
	 	  CheckBox { id: dSensV2I; checked: true; x: 130; y: 20;   
	     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12;
	     color: "#e0dfc3"; text: "Somente se V-I ou vii°-I" }
	 		}
	 	  CheckBox { id: dSensV2vi; checked: true; x: 130; y: 40;   
	     Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 12;
	     color: "#e0dfc3"; text: "Somente se V-vi ou vii°-vi" }
	 		}		   
		 } 
		 
		 CheckBox { id: dobra5dim; checked: true; x: 10; y: 190;   
		   Text { anchors.left: parent.right; anchors.leftMargin: -5; anchors.verticalCenter: parent.verticalCenter; font.pixelSize: 13;
		   color: "#e0dfc3"; text: "Acordes com a 5ª diminuta ou aumentada dobrada" }
		 } 
    } 
   }
 }
} // window  


//--------------------------------------------------------------------------------
            
	ApplicationWindow { // janela com as mensagens de resultado
	    id: msgResult
	    visible: false;
	    title: "Resultado"
	    width: 450; height: 40
	    color: "#343530"
	    
	    Rectangle {
          id: btResult
          property alias text: lresult.text
          signal clicked
          visible: true
          width: 100; height: 25
          x: 110
          border { width: 1; color: "#555555" }
          smooth: true
          radius: 3
          gradient: Gradient {
              GradientStop { position: 0.0
                  color: {
                        if (mArea6.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#035b25" }
            } 
          
         Text {
           id: lresult
           anchors.centerIn: parent
           text: "Fechar"
           color: "#aaf0e1"
         }       
                  
         MouseArea {
          id: mArea6
          anchors.fill: parent
          onClicked: { window.raise(); msgResult.close(); apagaCor(); return }
         } // mouseArea
       } // Rectangle btResult
       
       Rectangle {
          id: btAtualiza
          property alias text: latual.text
          signal clicked
          visible: true
          width: 100; height: 25
          x: 240
          border { width: 1; color: "#555555" }
          smooth: true
          radius: 3
          gradient: Gradient {
              GradientStop { position: 0.0
                  color: {
                        if (mArea61.pressed)
                            return "#888d96"
                           else
                           return "#a0a8af"
                     }
              }
              GradientStop { position: 1.0; color: "#035b25" }
            } 
          
         Text {
           id: latual
           anchors.centerIn: parent
           text: "Atualizar"
           color: "#aaf0e1"
         }       
                  
         MouseArea {
          id: mArea61
          anchors.fill: parent
          onClicked: { msgResult.close(); apagaCor(); verificar(); }
         } // mouseArea
       } // Rectangle btAtualiza
   
	    
	  Component {
	    id: component
	    Rectangle {
          id: msg
          property alias text: lResul.text
          property int value: 0
          signal clicked
          visible: true
          width: 450; height: 21
          border { width: 1; color: "#000000" }
          smooth: true
          radius: 3
          color: "#6c6d6d"
          /*gradient: Gradient {
            GradientStop { position: 0.0; color: "#234049"}
            GradientStop { position: 0.5; color: {
                        if (msgClick.pressed)
                            return "#c4ae05"
                           else
                           return "#6c6d6d"
                     }}
            GradientStop { position: 1.0; color: "#234049"}
          }  */
          
         Text {
           id: lResul
           anchors.left: parent.left; anchors.leftMargin: 3
           anchors.verticalCenter: parent.verticalCenter
           text: "-"
           color: "#aaf0e1"
         }       
                  
         MouseArea {
          id: msgClick
          anchors.fill: parent
          onClicked: { colorir(parent.value); }
          }
       } 
	  } // componente
 }     
// ----------------------------------------------------------------------------------------------------------------
      
   MessageDialog {
      id: msgErros
      title: "Erros!"
      text: "-"
      property bool estado: false
      onAccepted: {
            msgErros.visible=false;
      }

      visible: false;
}
      
// -----------------------------------------------------------------------------------------------------------------
// -----------------------------------------------------------------------------------------------------------------
  // ---- variáveis globais ----
      
      property bool processaTudo: false;
      property var vozes: [];
      property var resultado: [];
      property var mensagem: [];
      property var verificados: 0;    
      property var acordeGrau: [];

// ----------- funções ---------
function openFile(fileUrl) {
    var request = new XMLHttpRequest();
    request.open("GET", fileUrl, false);
    request.send(null);
    var preSet = request.responseText.split("\n");
    
    nomePre.text = fileUrl;
    var nomeSplit = nomePre.text.split('/');
    nomePre.text = nomeSplit[nomeSplit.length-1];
        
    for (var i=0;i<preSet.length;i++) { 
        
      if (preSet[i] == "true") { preSet[i] = true; } else 
      if (preSet[i] == "false") { preSet[i] = false };
        
    };
    
    mesmaDir.checked = preSet[0]; 
    mDirAcor.checked = preSet[1];
    paralela8.checked = preSet[2];
    par8Rep.text = preSet[3];
    paral8Ext.checked = preSet[4];
    paralela5.checked = preSet[5]; 
    par5Rep.text = preSet[6];
    paral5Ext.checked = preSet[7];
    paralela4.checked = preSet[8]; 
    par4Rep.text = preSet[9];
    paral4Ext.checked = preSet[10];
    paralela36.checked = preSet[11]; 
    par36Rep.text = preSet[12];
    paral36Ext.checked = preSet[13];
    oculta8.checked = preSet[14]; 
    oculta5.checked = preSet[15]; 
    ocultAsc.checked = preSet[16];
    ocultExt.checked = preSet[17];
    ocultSalto.checked = preSet[18]; 
    consecObli.checked = preSet[19]; 
    consecCont.checked = preSet[20];
    consecExt.checked = preSet[21];
    cruzaVozes.checked = preSet[22];
    cruzaExt.checked = preSet[23];
    overlap.checked = preSet[24];  
    uniss.checked = preSet[25]; 
    falsaR.checked = preSet[26];  
    resolvSens.checked = preSet[27]; 
    sensivelExt.checked = preSet[28];
    sensivelVI.checked = preSet[29];
    sensivelVvi.checked = preSet[30];
    res43.checked = preSet[31];  
    res43Ext.checked = preSet[32];
    res43VI.checked = preSet[33];
    res43Vvi.checked = preSet[34];
    segInvDiss.checked = preSet[35];
    segInvConj.checked = preSet[36];
    segInvArp.checked = preSet[37];
    segInvPara.checked = preSet[38];
	 dissonancias.checked = preSet[39];
	 dissSusp.checked = preSet[40];
	 dissNP.checked  = preSet[41];
	 dissBordS.checked = preSet[42];
	 dissBordI.checked  = preSet[43];
    dissAp.checked = preSet[44];
    dissRet.checked = preSet[45];
    dissAnt.checked = preSet[46];
    dissEsc.checked = preSet[47];
    dissPed.checked = preSet[48]; 
    dissRes.checked = preSet[49];
    dissDiss.checked = preSet[50];
    dDissB.checked = preSet[51]; 
    melAum.checked = preSet[52];
    melDim.checked = preSet[53];
    melDimMuda.checked = preSet[54];
    mel7.checked = preSet[55];
    mel8.checked = preSet[56];
    mel4.checked = preSet[57];
    mel4Op.checked = preSet[58];
    mel4r.checked = preSet[59]; 
    mel4cj.checked = preSet[60];
    mel2Salt.checked = preSet[61];
    mel2tri.checked = preSet[62];
    melDC.checked = preSet[63];
    melPFs.checked = preSet[64];
    melPFsS.checked = preSet[65];
    melPFi.checked = preSet[66];
    melPFiS.checked = preSet[67];
    varDir.checked = preSet[68]; 
    varDirQt.text = preSet[69]; 
    repNota.checked = preSet[70]; 
    repNotaQt.text = preSet[71]; 
    repPad.checked = preSet[72]; 
	 repPadQt.text = preSet[73]; 
	 extMel.checked = preSet[74]; 
	 extMelQt.text = preSet[75]; 
	 extMelS.checked = preSet[76]; 
	 extMelI.checked = preSet[77]; 
	 extMelG.checked = preSet[78]; 
    espaço.checked = preSet[79];
    espS.text = preSet[80];
    espB.text = preSet[81];
    extens.checked = preSet[82];
    sop1.text = preSet[83];
    sop2.text = preSet[84];
    alto1.text = preSet[85];
    alto2.text = preSet[86];
    ten1.text = preSet[87];
    ten2.text = preSet[88];
    bxo1.text = preSet[89];
    bxo2.text = preSet[90];
    sem3.checked = preSet[91];
    pc3.checked = preSet[92];
    triadesDobra3.checked = preSet[93];
    dobra7.checked = preSet[94];
    dobraSens.checked = preSet[95];
    dSensV2I.checked = preSet[96];
    dSensV2vi.checked = preSet[97];
    dobra5dim.checked = preSet[98];
    
    
    //return request.responseText;
}

function saveFile(fileUrl, text) {
    var request = new XMLHttpRequest();
    request.open("PUT", fileUrl, false);
    var conteudoArquivo="";
    
    if(mesmaDir.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(mDirAcor.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(paralela8.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(par8Rep.text)+"\n";
    if(paral8Ext.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(paralela5.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(par5Rep.text)+"\n";
    if(paral5Ext.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(paralela4.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(par4Rep.text)+"\n";
    if(paral4Ext.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(paralela36.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(par36Rep.text)+"\n";
    if(paral36Ext.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(oculta8.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(oculta5.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(ocultAsc.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(ocultExt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(ocultSalto.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";}; 
    if(consecObli.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(consecCont.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(consecExt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(cruzaVozes.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(cruzaExt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(overlap.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(uniss.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(falsaR.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(resolvSens.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(sensivelExt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(sensivelVI.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(sensivelVvi.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(res43.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(res43Ext.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(res43VI.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(res43Vvi.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(segInvDiss.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(segInvConj.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(segInvArp.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(segInvPara.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dissonancias.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dissSusp.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dissNP.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dissBordS.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
 	 if(dissBordI.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
 	 if(dissAp.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissRet.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissAnt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissEsc.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissPed.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissRes.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dissDiss.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(dDissB.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(melAum.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(melDim.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(melDimMuda.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(mel7.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(mel8.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(mel4.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(mel4Op.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(mel4r.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(mel4cj.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(mel2Salt.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(mel2tri.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(melDC.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(melPFs.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(melPFsS.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 if(melPFi.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(melPFiS.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(varDir.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(varDirQt.text)+"\n";
    if(repNota.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(repNotaQt.text)+"\n";
    if(repPad.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(repPadQt.text)+"\n";
    if(extMel.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(extMelQt.text)+"\n";
    if(extMelS.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(extMelI.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(extMelG.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(espaço.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    conteudoArquivo+=(espS.text)+"\n";
    conteudoArquivo+=(espB.text)+"\n";
	 if(extens.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
	 conteudoArquivo+=(sop1.text)+"\n";
	 conteudoArquivo+=(sop2.text)+"\n";
    conteudoArquivo+=(alto1.text)+"\n";
    conteudoArquivo+=(alto2.text)+"\n";
    conteudoArquivo+=(ten1.text)+"\n";
    conteudoArquivo+=(ten2.text)+"\n";
    conteudoArquivo+=(bxo1.text)+"\n";
    conteudoArquivo+=(bxo2.text)+"\n";
    if(sem3.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(pc3.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(triadesDobra3.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dobra7.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dobraSens.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dSensV2I.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dSensV2vi.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
    if(dobra5dim.checked){conteudoArquivo+="true\n";}else{conteudoArquivo+="false\n";};
 
    
    request.send(conteudoArquivo);
    return request.status;
}

FileDialog {
    id: openFileDialog
    nameFilters: ["All files (*)"]
    onAccepted: openFile(openFileDialog.fileUrl)
}

FileDialog {
    id: saveFileDialog
    selectExisting: false
    nameFilters: ["Text files (*.txt)", "All files (*)"]
    onAccepted: saveFile(saveFileDialog.fileUrl, "")
}
 
function tipoAcordes() {
	   
   acordeGrau[0] = {tpc: [0,4,1], Grau: "I", modo: "M", diss: null}    // tríades M
   acordeGrau[1] = {tpc: [2,-1,3], Grau: "ii", modo: "M", diss: null}
   acordeGrau[2] = {tpc: [4,1,5], Grau: "iii", modo: "M", diss: null}
   acordeGrau[3] = {tpc: [-1,3,0], Grau: "IV", modo: "M", diss: null}
   acordeGrau[4] = {tpc: [1,5,2], Grau: "V", modo: "M", diss: null}
   acordeGrau[5] = {tpc: [3,0,4], Grau: "vi", modo: "M", diss: null}
   acordeGrau[6] = {tpc: [5,2,-1], Grau: "vii°", modo: "M", diss: [2]}
   
   acordeGrau[7] = {tpc: [0,4,1,5], Grau: "I7", modo: "M", diss: [3]}   // tetrades M
   acordeGrau[8] = {tpc: [2,-1,3,0], Grau: "ii7", modo: "M", diss: [3]}
   acordeGrau[9] = {tpc: [4,1,5,2], Grau: "iii7", modo: "M", diss: [3]}
   acordeGrau[10] = {tpc: [-1,3,0,4], Grau: "IV7", modo: "M", diss: [3]}
   acordeGrau[11] = {tpc: [1,5,2,-1], Grau: "V7", modo: "M", diss: [3]}
   acordeGrau[12] = {tpc: [3,0,4,1], Grau: "vi7", modo: "M", diss: [3]}
   acordeGrau[13] = {tpc: [5,2,-1,3], Grau: "viiø", modo: "M", diss: [2,3]}
   
   acordeGrau[14] = {tpc: [0,4,5], Grau: "I7O", modo: "M", diss: [2]}     // tetrades com omissão
   acordeGrau[15] = {tpc: [2,-1,0], Grau: "ii7O", modo: "M", diss: [2]}
   acordeGrau[16] = {tpc: [4,1,2], Grau: "iii7O", modo: "M", diss: [2]}
   acordeGrau[17] = {tpc: [-1,3,4], Grau: "IV7O", modo: "M", diss: [2]}
   acordeGrau[18] = {tpc: [1,5,-1], Grau: "V7O", modo: "M", diss: [2]}
   acordeGrau[19] = {tpc: [3,0,1], Grau: "vi7O", modo: "M", diss: [2]}
   acordeGrau[20] = {tpc: [5,-1,3], Grau: "viiøO", modo: "M", diss: [1,2]}
   
   acordeGrau[21] = {tpc: [0,-3,1], Grau: "i", modo: "m", diss: null}    // tríades 
   acordeGrau[22] = {tpc: [2,-1,-4], Grau: "ii°", modo: "m", diss: [2]}
   acordeGrau[23] = {tpc: [2,-1,3], Grau: "ii", modo: "m", diss: null}
   acordeGrau[24] = {tpc: [-3,1,-2], Grau: "III", modo: "m", diss: null}
   acordeGrau[25] = {tpc: [-3,1,5], Grau: "III+", modo: "m", diss: [2]}
   acordeGrau[26] = {tpc: [-1,-4,0], Grau: "iv", modo: "m", diss: null}
   acordeGrau[27] = {tpc: [-1,3,0], Grau: "IV", modo: "m", diss: null}
   acordeGrau[28] = {tpc: [1,5,2], Grau: "V", modo: "m", diss: null}
   acordeGrau[29] = {tpc: [1,-2,2], Grau: "v", modo: "m", diss: null}
   acordeGrau[30] = {tpc: [-4,0,-3], Grau: "VI", modo: "m", diss: null}
   acordeGrau[31] = {tpc: [3,0,-3], Grau: "vi°", modo: "m", diss: [2]}
   acordeGrau[32] = {tpc: [5,2,-1], Grau: "vii°", modo: "m", diss: [2]}  
   acordeGrau[33] = {tpc: [-2,2,-1], Grau: "VII", modo: "m", diss: null}
   
   acordeGrau[34] = {tpc: [0,-3,1,-2], Grau: "i7", modo: "m", diss: [3]}   // tetrades
   acordeGrau[35] = {tpc: [2,-1,-4,0], Grau: "iiø", modo: "m", diss: [2,3]}
   acordeGrau[36] = {tpc: [2,-1,3,0], Grau: "ii7", modo: "m", diss: [3]}
   acordeGrau[37] = {tpc: [-3,1,-2,2], Grau: "III7", modo: "m", diss: [3]}
   acordeGrau[38] = {tpc: [-3,1,5,2], Grau: "III+7", modo: "m", diss: [2,3]}
   acordeGrau[39] = {tpc: [-1,-4,0,-3], Grau: "iv7", modo: "m", diss: [3]}
   acordeGrau[40] = {tpc: [-1,3,0,-3], Grau: "IV7", modo: "m", diss: [3]}
   acordeGrau[41] = {tpc: [1,5,2,-1], Grau: "V7", modo: "m", diss: [3]}
   acordeGrau[42] = {tpc: [1,-2,2,-1], Grau: "v7", modo: "m", diss: [3]}
   acordeGrau[43] = {tpc: [-4,0,-3,1], Grau: "VI7", modo: "m", diss: [3]}
   acordeGrau[44] = {tpc: [3,0,-3,1], Grau: "viø", modo: "m", diss: [2,3]}
   acordeGrau[45] = {tpc: [5,2,-1,-4], Grau: "vii°7", modo: "m", diss: [2,3]}
   acordeGrau[46] = {tpc: [-2,2,-1,-4], Grau: "VII7", modo: "m", diss: [3]}
   acordeGrau[47] = {tpc: [5,2,-1,3], Grau: "viiø", modo: "m", diss: [2,3]}
   acordeGrau[48] = {tpc: [-2,2,-1,3], Grau: "VII7M", modo: "m", diss: [3]}
   
   acordeGrau[49] = {tpc: [0,-3,-2], Grau: "i7O", modo: "m", diss: [2]}     // tetrades com omissão
   acordeGrau[50] = {tpc: [2,-4,0], Grau: "iiøO", modo: "m", diss: [1,2]}
   acordeGrau[51] = {tpc: [2,-1,0], Grau: "ii7O", modo: "m", diss: [2]}
   acordeGrau[52] = {tpc: [-3,1,2], Grau: "III7O", modo: "m", diss: [2]}
   acordeGrau[53] = {tpc: [-3,5,2], Grau: "III+7O", modo: "m", diss: [1,2]}
   acordeGrau[54] = {tpc: [-1,-4,-3], Grau: "iv7O", modo: "m", diss: [2]}
   acordeGrau[55] = {tpc: [-1,3,-3], Grau: "IV7O", modo: "m", diss: [2]}
   acordeGrau[56] = {tpc: [1,5,-1], Grau: "V7O", modo: "m", diss: [2]}
   acordeGrau[57] = {tpc: [1,-2,-1], Grau: "v7O", modo: "m", diss: [2]}
   acordeGrau[58] = {tpc: [-4,0,1], Grau: "VI7O", modo: "m", diss: [2]}
   acordeGrau[59] = {tpc: [3,-3,1], Grau: "viøO", modo: "m", diss: [1,2]}
   acordeGrau[60] = {tpc: [5,-1,-4], Grau: "vii°7O", modo: "m", diss: [1,2]}
   acordeGrau[61] = {tpc: [-2,-1,-4], Grau: "VII7O", modo: "m", diss: [2]}
   acordeGrau[62] = {tpc: [5,2,3], Grau: "viiøO", modo: "m", diss: [1,2]}
   acordeGrau[63] = {tpc: [-2,-1,3], Grau: "VII7MO", modo: "m", diss: [2]}
}  
function reconheceInversão(x, baixo){ // recebe a posição do acordeGrau[x] e vozes[x].tonal[vozes[x].tonal.length-1], para reconhecer a inversão
  if (acordeGrau[x]) { 
   x = grauSemOmissão(x);
   
   var tom = tonicaTPC(btTonica.text, btAcid.text); 
   var inv = procuraBaixo(acordeGrau[x].tpc);
  // console.log("Inversão: "+inv);
   return inv;
   
   function procuraBaixo(acorde) {
   
     for (var j=0;j<acorde.length;j++) { 
     var nota = acorde[j] + tom;
   //  console.log(j+") testa acordeGrau "+x+", "+acorde[j]+", nota "+nota+" para o baixo "+baixo )
       if (nota == baixo) { return j;};     
     };  	
   //  console.log("não reconheceu inversão")
   };
  } else { console.log("não reconheceu acordeGrau", x) };
}

function reconheceDobramento(x) {
 
 var acorde = vozes[x].tonal;
 var rep = [];
 
 for (var i=0;i<acorde.length-1;i++){
   for (var j=i+1;j<acorde.length;j++){
     if (acorde[i] == acorde[j]) { rep.push(acorde[j]); };
     //console.log(x+") nota i:",acorde[i]," == acorde[j]:",acorde[j]," ==> rep:",rep)
   };
 };
 
 return rep;

}

function mostraCifras() {
 curScore.startCmd();
 var cursor = curScore.newCursor();
 cursor.track = 0; var pos = 0;	
 for (var x=0;x<vozes.length;x++) {	
  var grau = reconheceGrau(x); 
       cursor.rewind(0);
	     for (var i=1;i<=vozes[x].nota.length;i++) {
	     	if (i == vozes[x].nota.length) { var j = 0; } else { var j = i; };
	     	var ant = vozes[x].duração[i-1];
	     	var atual = vozes[x].duração[j];
	       if (vozes[x].ligadura[i-1]) { ant = vozes[x].duração[i-1] + vozes[x-1].duração[i-1]; };
	       if (vozes[x].ligadura[j]) { atual = vozes[x].duração[j] + vozes[x-1].duração[j]; };
	     	 if (atual < ant) { cursor.track = vozes[x].trilha[j]; pos = j; };
	     }; 
  
      while (cursor.tick < vozes[x].posição[pos]) {
             cursor.next();
      }
      
  var myText = newElement(Element.STAFF_TEXT);
      if (!grau && grau !== 0) { myText.text = "?"; } else { myText.text = acordeGrau[grau].Grau;};
	   if (x > 0 && (vozes[x].posição[0] == vozes[x-1].posição[0])) { myText.offsetX = -3; } else {myText.offsetX = 0;};
      if (cursor.track > 3) { myText.offsetY = 13; } else { myText.offsetY = 28; };
      cursor.add(myText);
  };
  curScore.endCmd();
}	
function colorir(valor) {
     
     curScore.startCmd();
      
      apagaCor();
      
      mensagem[valor-1].color = "#6b6746";
        	      
      for (var z=1;z<resultado[valor].length;z++) {  		  
            if (resultado[valor][z]) { resultado[valor][z].color = "red"; };
         };
      
      curScore.endCmd();
      
      msgResult.raise();
   }
      
function apagaCor() {
      
      for (var x=1;x<=verificados;x++) { // apaga seleções anteriores e botões
	      
	         mensagem[x-1].color = "#6c6d6d";
	      
	      for (var z=1;z<resultado[x].length;z++) {  		  
            if (resultado[x][z]) { resultado[x][z].color = "black"; };
         };
	            
	    };   
   
   }

function finaliza() {
     msgResult.text = "Nenhuma partitura encontrada!\n";
     msgResult.visible = true;
   }
      
function destroirMsg() {
    for (var i=0;i<verificados;i++) {
 	  
     if (mensagem[i]) {				
     	mensagem[i].destroy();
     };
	 };
   
   }

function grauSemOmissão(grau){
 if (acordeGrau[grau]) {
    switch (acordeGrau[grau].modo) {   // se for com omissão, verificar no acorde completo correspondente;
      case "M": if (acordeGrau[grau].Grau.substr(-1,1) == "O"){ grau = grau - 7;}; break;
      case "m": if (acordeGrau[grau].Grau.substr(-1,1) == "O"){ grau = grau - 15;}; break;
    };
    return grau;
  } else { console.log("não reconheceu acorde!",grau) }
}
  
function reconheceGrau(x) {
 //  console.log(x)
   var acordeX = [];
   var resultaGrau = false;
   
   for (var i = 0;i < vozes[x].tonal.length; i++){
        if(acordeX.indexOf(vozes[x].tonal[i]) == -1){
            acordeX.push(vozes[x].tonal[i])
        };
    }; 

   for (var i=0;i<=54;i++) {
      var contTest = 0;
      var acordeTeste = [];
    
      if (acordeX.length == acordeGrau[i].tpc.length) {
      	
		  acordeGrau[i].tpc.forEach(somaTonica);
		    function somaTonica(teste, ind) { 
		    	var tom = tonicaTPC(btTonica.text, btAcid.text); 
		    	acordeTeste.push(teste + tom); }
		    	
         acordeX.forEach(verificaAcorde);
			  function verificaAcorde(acorde) { 
			    if (acordeTeste.indexOf(acorde) > -1) { contTest++; }; 
		  	    if (contTest == acordeX.length) { resultaGrau = i.toString(); };  };
		
      };
     
  }; 
  
  if (resultaGrau) {return Math.abs(resultaGrau);} else { //|| resultaGrau == 0
  	         msgErros.text += "O acorde "+(x+1)+" não foi reconhecido!!\n"; 
            msgErros.estado=true; return false;};
}

function removeRepetição(tpc) {
  
  var acordeX = [];
  
  for (var i = 0;i < tpc.length; i++){
        if(acordeX.indexOf(tpc[i]) == -1){
            acordeX.push(tpc[i]);
        };
  };
  
  return acordeX;
  
}

function reconheceOmissão(tpc) {
  
  var acordeX = removeRepetição(tpc);
  var result = [];
  var intrv = [];
  var om31 = [2,1], om32 = [1,4], om33 = [3,6], om34 = [4,2], om35 = [2,8], om36 = [5,3];
  var om51 = [2,4], om52 = [4,1], om53 = [1,2], om54 = [3,5], om55 = [6,3], om56 = [1,2];
  
  acordeX.sort(function(a, b){return a - b});
  
  for (var x=1;x<acordeX.length;x++) {
    var a = acordeX[x] - acordeX[x-1];
    intrv.push(a);
  };  
 
  switch (acordeX.length) {
  	case 1: result = ["Acorde incompleto"]; break;
  	case 2: 
  	  if (intrv[0] == 2 || intrv[0] == 5 || intrv[0] == 9) { result = [3, 5]; } else
  	  if (intrv[0] == 1 || intrv[0] == 6 || intrv[0] == 8) { result = [3]; } else
  	  if (intrv[0] == 4 || intrv[0] == 3) { result = [5]; }; break;  	  
   case 3: 
     if (iguais(intrv, om31) || iguais(intrv, om32) || iguais(intrv, om33) || 
         iguais(intrv, om34) || iguais(intrv, om35) || iguais(intrv, om36)) { result = [3]; } else
     if (iguais(intrv, om51) || iguais(intrv, om52) || iguais(intrv, om53) ||
         iguais(intrv, om54) || iguais(intrv, om55)) { result = [5]; }; break;
   case 4:
     result = [0]; break;
  }; 
  
  return result;
  
 function iguais(a, b) {
 	if (a.length != b.length) { return false; };
 	
 	for (var i = 0; i<a.length; i++) {
 		if (a[i] != b[i]) { return false; };            
 	};
 	 
 	return true;
 	
 };
}

function verificaGrauMelodico(nota,tom) {
 	var x = nota - tom;
 	var modo = menuModo.value;
  switch(modo) {
  	case "Maior":
  	 switch (x) {
  	 	case 0: return 1; break;
  	 	case 2: return 2; break;
  	 	case 4: return 3; break;
  	 	case -1: return 4; break;
  	 	case 1: return 5; break;
  	 	case 3: return 6; break;
  	 	case 5: return 7; break;
  	 }; break;
  	case "Menor":
  	 switch (x) {
  	 	case 0: return 1; break;
  	 	case 2: return 2; break;
  	 	case -3: return 3; break;
  	 	case -1: return 4; break;
  	 	case 1: return 5; break;
  	 	case -4: return 6; break;
  	 	case 3: return 6; break;
  	 	case -2: return 7; break;
  	 	case 5: return 7; break;
  	 }; break;
  }
 } 
function direção(x) {
            if (x > 0) return(1); //  ascendente
            else if (x == 0) return(0); // sem direção
            else return(-1); // descendente
      }

function tonicaTPC(nome,acidente) {

   var tonica = nome+acidente
   
   switch (tonica) {
     case "Dó": return 14; break;
     case "Dó#": return 21; break;
     case "Dób": return 7; break;
     case "Ré": return 16; break;
     case "Ré#": return 23; break;
     case "Réb": return 9; break;
     case "Mi": return 18; break;
     case "Mi#": return 25; break;
     case "Mib": return 11; break;
     case "Fá": return 13; break;
     case "Fá#": return 20; break;
     case "Fáb": return 6; break;
     case "Sol": return 15; break;
     case "Sol#": return 22; break;
     case "Solb": return 8; break;
     case "Lá": return 17; break;
     case "Lá#": return 24; break;
     case "Láb": return 10; break;
     case "Si": return 19; break;
     case "Si#": return 26; break;
     case "Sib": return 12; break;
   }

}

function n2m(texto) {
  if (texto.length > 3 || texto.length < 2) { msgErros.text += "Índice inválido para o cálculo da extensão das vozes!\n";
                                              msgErros.estado = true; return null; } else
  if (texto.length == 2) {var nota = texto.substr(0,1);} else { var nota = texto.substr(0,2); };
  
  nota = nota.toUpperCase();
  
  switch(nota.substr(0,1)) { 
   case "C": var midi = 0; break;
   case "D": var midi = 2; break;
   case "E": var midi = 4; break;
   case "F": var midi = 5; break;
   case "G": var midi = 7; break;
   case "A": var midi = 9; break;
   case "B": var midi = 11; break;
  };
  
  if (nota.length == 2) {
   switch(nota.substr(1,1)) { 
    case "#": midi = midi + 1; break;
    case "B": midi = midi - 1; break;
   };
  };
  
  var oitava = parseInt(texto.substr(-1,1));
  if (oitava > 5 || oitava < 1) { msgErros.text += "Índice inválido para o cálculo da extensão das vozes!\n"; 
                                  msgErros.estado = true; return null; };
  
  switch(oitava) {
  	case 1: midi = midi + 36; break;
  	case 2: midi = midi + 48; break;
  	case 3: midi = midi + 60; break;
  	case 4: midi = midi + 72; break;
  	case 5: midi = midi + 84; break;
  };
  
  return midi;
  
}
//------------------------------- 
function verificar() { 
 msgErros.text = "";
 msgErros.estado = false;
 msgResult.height = 40;
 destroirMsg();
 resultado = [];
 
 tipoAcordes();
 carregarNotas();
 //mostraCifras();
 
 if (mesmaDir.checked) { mesmaDireção(); };
 if (paralela5.checked || paralela8.checked) { quintasOitavas(); };
 if (oculta5.checked || oculta8.checked) { ocultas(); };
 if (consecObli.checked || consecCont.checked) { consecutivas(); };
 if (paralela4.checked) { quartas(); };
 if (paralela36.checked) { terçasSextas(); };
 if (cruzaVozes.checked) { cruzamento(); };
 if (overlap.checked) { overlapping(); };
 if (resolvSens.checked) { resolveSens(); };
 if (res43.checked) { resolve43(); };
 if (segInvDiss.checked) { segInvDissonancia(); };
 if (dissonancias.checked) { trataDissonancias(); };
 if (melAum.checked) { melodiaAum(); };
 if (melDim.checked) { melodiaDim(); };
 if (mel7.checked) { melodia7(); };
 if (mel8.checked) { melodia8(); };
 if (mel4.checked) { melodia4(); };
 if (mel2Salt.checked) { melodia2Salt(); };
 if (melDC.checked) { melodiaDC(); };
 if (melPFs.checked || melPFi.checked) { melodiaPF(); };
 if (espaço.checked) { espaçamento(); };
 if (extens.checked) { extensVozes(); };
 if (sem3.checked) { acordeSemTerça(); };
 if (pc3.checked) { menos3PCs(); };
 if (triadesDobra3.checked) { dobramentoTerça(); };
 if (dobra7.checked) { dobramentoSetima(); };
 if (dobraSens.checked) {dobramentoSensivel(); };
 if (dobra5dim.checked) {dobramentoQuinta(); };
 if (varDir.checked) { variedadeDirecionamento(); };
 if (repNota.checked) { repetiçãoNotas(); };
 if (repPad.checked) { repetePadrão(); };
 if (extMel.checked) { extensãoMelodica(); };
 if (uniss.checked) { unissono(); };
 if (falsaR.checked) { falsaRelação(); };
 
  for (var i=0;i<verificados;i++) {
  			  
  	mensagem[i] = component.createObject(msgResult);
  	mensagem[i].y = i*25 + 40;
  	mensagem[i].text = resultado[i+1][0];
  	mensagem[i].value = i+1;
  	msgResult.height = i*25 + 70;
  };     
									                 								         
  msgResult.visible = true;
  
  if (msgErros.estado) { msgErros.visible = true; };
}

function carregarNotas() {  

  console.log("Harmonia I ............................................................ Rogério Tavares Constante - 2018(c)")
  
  if (typeof curScore == 'undefined' || curScore == null) { // verifica se há partitura
     console.log("nenhuma partitura encontrada");
     finaliza();
     return;
  };
  
  //procura por uma seleção
  
  var pautaInicial;
  var pautaFinal;	
  var posFinal;
  var posInicial;
  processaTudo = false;
  vozes = [];
  var cursor = curScore.newCursor();
  
  cursor.rewind(1);
  
    if (!cursor.segment) {
       // no selection
       console.log("nenhuma seleção: processando toda partitura");
       processaTudo = true;
       pautaInicial = 0;
       pautaFinal = curScore.nstaves;
       
     } else {	 
       pautaInicial = cursor.staffIdx;
       cursor.rewind(2);
       pautaFinal = cursor.staffIdx+1;
       posFinal = cursor.tick;
          if(posFinal == 0) {  // se seleção vai até o final da partitura, a posição do fim da seleção (rewind(2)) é 0.
          							// para poder calcular o tamanho do segmento, pega a última posição da partitura (lastSegment.tick) e adiciona 1.
          posFinal = curScore.lastSegment.tick + 1;
          }
       cursor.rewind(1);
       posInicial = cursor.tick;
    };      

  // ------------------ inicializa variáveis de dados 
            
            var seg = 0;
            var carregou;
            verificados = 0;
            var trilha;
            var trilhaInicial = pautaInicial * 4;
            var trilhaFinal = pautaFinal * 4;    
            var compasso = 0;
            var compassoAtual = null;
            
          if (!processaTudo) { 
            cursor.rewind(0); 
            while (cursor.segment && cursor.segment.tick < posInicial) {
     	       if (cursor.measure != compassoAtual) { 
           	   compasso++;
           	   compassoAtual = cursor.measure;
           	 };
           	 cursor.next();
            };
          };  
                  
            // lê as informações da seleção (ou do documento inteiro, caso não haja seleção)

            if(processaTudo) { // posiciona o cursor no início
                  cursor.track = 0;
                  cursor.rewind(0);
            } else {
                  cursor.rewind(1);
            };
            
          //  var denominador = cursor.timeSignature.denominator;
          //  var numerador = cursor.timeSignature.numerator;
            var segmento = cursor.segment;
          
           while (segmento && (processaTudo || segmento.tick < posFinal)) {
           	
           	 carregou = false;
           	 if (cursor.measure != compassoAtual) { 
           	   compasso++;
           	   compassoAtual = cursor.measure;
           	 };
         
             var voz = 0;
	           
	          vozes[seg] = { nota: [], tonal: [], posição: [], duração: [], trilha: [], objeto: [], ligadura: [] };
	                        
             // Passo 1: ler as notas e guardar em "vozes"
               for (trilha = trilhaInicial; trilha < trilhaFinal; trilha++) {
					 
            	  if (segmento.elementAt(trilha)) { 
                   if (segmento.elementAt(trilha).type == Element.CHORD) {
                     
                     var duração = segmento.elementAt(trilha).duration.ticks;
                     var notas = segmento.elementAt(trilha).notes;
						
                     for (var j=notas.length-1; j>=0;j--) { 
                                         							
                       vozes[seg].nota[voz] = notas[j].pitch; 
                       vozes[seg].tonal[voz] = notas[j].tpc 
                       vozes[seg].trilha[voz] = trilha; 
                       vozes[seg].posição[voz] = segmento.tick;        		
                       vozes[seg].duração[voz] = duração;
                       vozes[seg].compasso = compasso;
                       vozes[seg].objeto[voz] = notas[j];
                       vozes[seg].ligadura[voz] = false;
                      	  
                       voz++;
                       carregou = true; 
                      // if (poli.checked) { break; }
                     };  
                   };
                 } else { 
                 
                // if (poli.checked && vozes[seg-1]) {  
                   if (vozes[seg-1]) {  
					     
					     for (var y=0; y<vozes[seg-1].nota.length;y++) {
						    if (trilha == vozes[seg-1].trilha[y]) {
						    	if ((vozes[seg-1].duração[y] + vozes[seg-1].posição[y]) > segmento.tick) { var prolonga = true; } else { var prolonga = false; };
						    if (prolonga)  { 
						        vozes[seg].nota[voz] = vozes[seg-1].nota[y]; 
	                       vozes[seg].tonal[voz] = vozes[seg-1].tonal[y] 
	                       vozes[seg].trilha[voz] = vozes[seg-1].trilha[y] 
	                       vozes[seg].posição[voz] = segmento.tick;        		
	                       vozes[seg].duração[voz] = vozes[seg-1].duração[y] - (segmento.tick - vozes[seg-1].posição[y]);
	                       vozes[seg].compasso = compasso;
	                       vozes[seg].objeto[voz] = vozes[seg-1].objeto[y];
								  vozes[seg].ligadura[voz] = true;						        
						        
						        voz++;
						        carregou = true; 
							   };	
							   break;			    
						    };
					     };
					  };              
                };
              };
           
              if (carregou) { 
                cursor.track = 0;
                 for (var i=1;i<vozes[seg].nota.length;i++) {
                 	 if (vozes[seg].duração[i] < vozes[seg].duração[i-1]) { cursor.track = vozes[seg].trilha[i]; };
                 };    
              };             
             
        		  cursor.next(); segmento = cursor.segment; 
        		  if (carregou) { seg++; };
           		   
           }; 
           
   if (seg == 0) { msgErros.text += "Nenhum acorde carregado!!\n"; 
                        msgErros.estado=true; Qt.quit(); };
       
}

function mesmaDireção() {
  
  var acorde1, acorde2;
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
     
    var direções = [];
    
    if (vozes[x].nota.length != vozes[x-1].nota.length) { msgErros.text += "Acordes " + (x+1) + " e " + x + " com quantidades diferentes de notas! \n Não foi possível verificar paralelismo!\n"; 
                        msgErros.estado=true; continue; };
               
    for (var voz=0; voz < vozes[x].nota.length; voz++) { // percorre vozes
                    
      direções[voz] = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
                          
    };
    
    acorde1 = reconheceGrau(x); if (!acorde1 && acorde1 !== 0) { return; };
    acorde2 = reconheceGrau(x-1); if (!acorde2 && acorde2 !== 0) { return; };
    
    if (acorde1 == acorde2 && mDirAcor.checked) { var msmAcor = true; } else { var msmAcor = false; };

    if (direções.every(checkDir) && !msmAcor) { // testa direções  	  
      verificados++;
      criaResultado(verificados, x, 0, vozes[x].nota.length-1, "Todas as vozes na mesma direção", 2, vozes[x].nota.length);
    };
              
  };
  
  function checkDir(dir) {
    return dir == direções[0];
  };
}

function quintasOitavas() {
   var par5Status = true, par8Status = true;
   var acorAnt = 1;
   var qtdpar8Rep = parseInt(par8Rep.text), qtdpar5Rep = parseInt(par5Rep.text);             
     
     for (var voz=0; voz < 10; voz++) { // percorre vozes
       var vozAnt = voz;
       
       for (var i=voz+1; i < 10; i++) { //  percorre outras vozes
   		 var vozAtual = i;
   		 var par5 = 0, par8 = 0;
   		  
	       for (var x=1;x<=vozes.length;x++) { // percorre acordes
	         if (x==vozes.length) { verificou58(); continue ; };  
	         if (voz >= vozes[x].nota.length-1 || i >= vozes[x].nota.length) { continue ; };
        
         var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
         var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
         
         var intAtual = vozes[x].nota[voz] - vozes[x].nota[i];
         var intAnt = vozes[x-1].nota[voz] - vozes[x-1].nota[i];       
         
         if (dir1 == dir2 && dir1 != 0) {          // both voices moving in the same direction
              
              if (Math.abs(intAtual%12) == 7 && intAtual == intAnt && paralela5.checked) { //testa 5ª paralela
                
                 if (vozAnt == voz) { var qtdPar5 = par5 + 2; }                  
               
                  par5++;
                  par5Status = true;
                  vozAnt = voz, vozAtual = i;
                  acorAnt = x;
                  par8 = 0, par8Status = false;
                  
              } else if (par5Status) { verificou58(); };
                  
               if (Math.abs(intAtual%12) == 0 && intAtual == intAnt && paralela8.checked) {  // testa 8ª paralela 
               
                 if (vozAnt == voz) { var qtdPar8 = par8 + 2;}                  
             
                  par8++;
                  par8Status = true;
                  vozAnt = voz, vozAtual = i;
                  acorAnt = x;
                  par5 = 0, par5Status = false;
                  
              } else if (par8Status) { verificou58(); };
                   
           } else { verificou58(); };                    
         };
       };
     };
     
     function verificou58() { 
    
      if (paral8Ext.checked) {	
		  if (vozAnt == 0 && vozAtual == vozes[acorAnt].nota.length-1) {    	
	       if (par8Status && par8 > qtdpar8Rep) { 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "8ª paralela", qtdPar8 , 2);};
	      }; } else {
	        if (par8Status && par8 > qtdpar8Rep) { 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "8ª paralela", qtdPar8 , 2);};
	      };  
	   if (paral5Ext.checked) {	
		  if (vozAnt == 0 && vozAtual == vozes[acorAnt].nota.length-1) {    	
	        if (par5Status && par5 > qtdpar5Rep) { 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "5ª paralela", qtdPar5 , 2);};
	      }; } else {
	        if (par5Status && par5 > qtdpar5Rep) { 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "5ª paralela", qtdPar5 , 2);};
	      };    
	  
      par8Status = false; par8 = 0;
      par5Status = false; par5 = 0;
    };
 }  
function quartas() {
   
   var par4Status = true;
   var acorAnt = 1;
   var qtdpar4Rep = parseInt(par4Rep.text);
   
  // console.log("par4Rep : "+ qtdpar4Rep)
   
     for (var voz=0; voz < 10; voz++) { // percorre vozes
       var vozAnt = voz;
       for (var i=voz+1; i < 10; i++) { // percorre outras vozes
         var vozAtual = i;
         var par4 = 0;
	       for (var x=1;x<vozes.length;x++) { // percorre acordes
	             
	         if (voz >= vozes[x].nota.length-1 || i >= vozes[x].nota.length) { verificou4(); continue; };
	           
	         var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
            var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
            
            var intAtual = vozes[x].nota[voz] - vozes[x].nota[i];
            var intAnt = vozes[x-1].nota[voz] - vozes[x-1].nota[i];
             
            if (Math.abs(intAtual%12) == 5 && intAtual == intAnt && dir1 == dir2 && dir1 != 0) { //testa por 4ª paralela
                
                 if (vozAnt == voz) { var qtdPar4 = par4 + 2;}                  
                  
                  par4++;
                  par4Status = true;
                  acorAnt = x;
                  vozAnt = voz, vozAtual = i;;
                  
              } else { verificou4(); };              
         }; 
       };
    };
    
    function verificou4() {
    
      if (par4Status && par4 > qtdpar4Rep) { 
        if (paral4Ext.checked) {	
		    if (vozAnt == 0 && vozAtual == vozes[acorAnt].nota.length-1) {	
            verificados++; 
            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "4ª paralela", qtdPar4 , 2); };
          } else {  
            verificados++; 
            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "4ª paralela", qtdPar4 , 2);          
          };
        
      };
     
      par4Status = false; par4 = 0;    
    
    };
}

function terçasSextas() {
   
   var par3Status = true, par6Status = true;
   var acorAnt = 1;
   var qtdpar36Rep = parseInt(par36Rep.text);
     
     for (var voz=0; voz < 10; voz++) { // percorre vozes
       var vozAnt = voz;
       
       for (var i=voz+1; i < 10; i++) { // percorre outras vozes
   		 var vozAtual = i;
   		 var par3 = 0, par6 = 0;
   		  
	       for (var x=1;x<vozes.length;x++) { // percorre acordes
	              
	         if (voz >= vozes[x].nota.length-1 || i >= vozes[x].nota.length) { 
	         
	            if (x==vozes.length-1) {verificou36();};
	            
	         continue; 
	         
	         };
	         
	         var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
            var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
            
            var intAtual = vozes[x].nota[voz] - vozes[x].nota[i];
            var intAnt = vozes[x-1].nota[voz] - vozes[x-1].nota[i];
        // console.log("voz, i, x: "+voz+", "+i+", "+x+" | intAnt: "+intAnt+" intAtual: "+intAtual)
            if (dir1 == dir2 && dir1 != 0) {          // both voices moving in the same direction
                 
              if ((Math.abs(intAtual%12) == 3 || Math.abs(intAtual%12) == 4) &&   //testa por 3ª paralela --
                  (Math.abs(intAnt%12) == 3 || Math.abs(intAnt%12) == 4)) { 
                
                 if (vozAnt == voz) { var qtdPar3 = par3 + 2; }                  
             //  console.log("testa por 3ª: x = " + x + " | qtdPar3 = "+ qtdPar3 + " ("+ par3 + " + 2) | vozAnt = " + vozAnt + ", voz = " + voz)    
                  par3++;
                  par3Status = true;
                  vozAnt = voz, vozAtual = i;
                  acorAnt = x;
                  par6 = 0, par6Status = false;
                  
              } else if (par3Status) { verificou36(); };
                  
               if ((Math.abs(intAtual%12) == 8 || Math.abs(intAtual%12) == 9) &&   //testa por 6ª paralela -- 
                  (Math.abs(intAnt%12) == 8 || Math.abs(intAnt%12) == 9)) {     
               
                 if (vozAnt == voz) { var qtdPar6 = par6 + 2;}                  
           //    console.log("testa por 6: x = " + x + " | qtdPar6 = "+ qtdPar6 + " ("+ par6 + " + 2) | vozAnt = " + vozAnt + ", voz = " + voz)    
                  par6++;
                  par6Status = true;
                  vozAnt = voz, vozAtual = i;
                  acorAnt = x;
                  par3 = 0, par3Status = false;
                  
              } else if (par6Status) { verificou36(); };
                   
           } else { verificou36(); };
                              
         }; 
      };
    };
    
    function verificou36() { 
      if (paral36Ext.checked) {	
		  if (vozAnt == 0 && vozAtual == vozes[acorAnt].nota.length-1) {    	
	        if (par3Status && par3 > qtdpar36Rep) { //console.log("Else da NÃO 3ª. acorAnt = " + acorAnt) 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "3ª paralela", qtdPar3 , 2);};
	        if (par6Status && par6 > qtdpar36Rep) { //console.log("Else da NÃO 6ª. acorAnt = " + acorAnt) 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "6ª paralela", qtdPar6 , 2);};
	      }; } else {
	        if (par3Status && par3 > qtdpar36Rep) { //console.log("Else da NÃO 3ª. acorAnt = " + acorAnt) 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "3ª paralela", qtdPar3 , 2);};
	        if (par6Status && par6 > qtdpar36Rep) { //console.log("Else da NÃO 6ª. acorAnt = " + acorAnt) 
	            verificados++; 
	            criaResultado(verificados, acorAnt, vozAnt, vozAtual, "6ª paralela", qtdPar6 , 2);}
	      };      
	  
      par6Status = false; par6 = 0;
      par3Status = false; par3 = 0;
    };

}
     
function ocultas() {
	
	for (var x=1;x<vozes.length;x++) { // percorre acordes
               
    for (var voz=0; voz < vozes[x].nota.length; voz++) { // percorre vozes
     
      var i;
      var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
                    
      for (i=voz+1; i < vozes[x].nota.length; i++) { // percorre outras vozes
        
         var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
         
         var intAtual = vozes[x].nota[voz] - vozes[x].nota[i];
         var intAnt = vozes[x-1].nota[voz] - vozes[x-1].nota[i];
         
         if (dir1 == dir2 && dir1 != 0) {          // both voices moving in the same direction
          
           if (Math.abs(intAtual%12) == 7 && intAtual != intAnt && oculta5.checked) {             // testa ocultas
             // testa condições   
             var cond = ""; var ocultas = ""; // limpa variáveis
            
             if (dir1 == 1) { cond = "a" }; // somente ascendente
             if (voz == 0 && i == vozes[x].nota.length-1) { cond = cond + "b" };     // somente vozes externas
             if (Math.abs(vozes[x-1].nota[voz] - vozes[x].nota[voz]) > 2) { cond = cond + "c" }; // somente salto na superior
              
             if (ocultAsc.checked) { ocultas = "a" };
             if (ocultExt.checked) { ocultas = ocultas + "b" };
             if (ocultSalto.checked) { ocultas = ocultas + "c" };
        
             var pertence =  false;
             for (z=0;z<ocultas.length;z++) {
             	var test = ocultas.substr(z,1);
             	if (cond.search(test) > -1) { pertence = true;} else { pertence = false; break; };   
             };
          
             if (pertence || ocultas == "") {         
               verificados++;
               criaResultado(verificados, x, voz, i, "5ª oculta", 2, 2); 
             };
           };                                                
           
           if (Math.abs(intAtual%12) == 0 && intAtual != intAnt && oculta8.checked) { // testa ocultas
             // testa consições
             var cond = ""; var ocultas = ""; // limpa variáveis
        
             if (dir1 == 1) { cond = "a" }; // somente ascendente
             if (voz == 0 && i == vozes[x].nota.length-1) { cond = cond + "b" };     // somente vozes externas
             if (Math.abs(vozes[x-1].nota[voz] - vozes[x].nota[voz]) > 2) { cond = cond + "c" }; // somente salto na superior
                 
             if (ocultAsc.checked) { ocultas = "a" };
             if (ocultExt.checked) { ocultas = ocultas + "b" };
             if (ocultSalto.checked) { ocultas = ocultas + "c" };
         
             var pertence =  false;
             for (z=0;z<ocultas.length;z++) {
             	var test = ocultas.substr(z,1);
             	if (cond.search(test) > -1) { var pertence = true;} else { pertence = false; break; };   
             };
              
             if (pertence || ocultas == "") {         
               verificados++;
               criaResultado(verificados, x, voz, i, "8ª oculta", 2, 2);  		                              
             };
           };                                                
         };        
      };
    };
  };
}

function consecutivas() {
                  
     for (var x=1;x<vozes.length;x++) { // percorre acordes
                  
       for (var voz=0; voz < vozes[x].nota.length; voz++) { // percorre vozes
        
         var i;
         var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
                       
         for (i=voz+1; i < vozes[x].nota.length; i++) { // percorre outras vozes
           
            var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
            
            var intAtual = vozes[x].nota[voz] - vozes[x].nota[i];
            var intAnt = vozes[x-1].nota[voz] - vozes[x-1].nota[i];
            
            // consecutivas
            
             if ((Math.abs(intAtual%12) == 7 || Math.abs(intAtual%12) == 0) && 
                 (Math.abs(intAnt%12) == 7 || Math.abs(intAnt%12) == 0))  {
               
               if ((consecObli.checked && (dir1 == 0 || dir2 == 0)) || (consecCont.checked && (dir1 != 0 && dir2 != 0 && dir1 != dir2))) {  
                 if (consecExt.checked) {	
                   if (voz == 0 && i == vozes[x].nota.length-1) {	
                  	verificados++;
                  	criaResultado(verificados, x, voz, i, "5ª ou 8ª consecutivas", 2, 2);};
                 } else { verificados++;
                          criaResultado(verificados, x, voz, i, "5ª ou 8ª consecutivas", 2, 2); };
               };
             };                      
         };
       };
     };
 }    
function cruzamento() { 

  for (var x=1;x<vozes.length;x++) { // percorre acordes
          
	 for (var voz=0; voz < vozes[x].nota.length - 1; voz++) { // percorre vozes
       
       if (voz==0 || voz == vozes[x].nota.length-2) { var vozExt = true; } else { var vozExt = false };       
       
       if (vozes[x].nota[voz] < vozes[x].nota[voz+1]) { 
          
          if (cruzaExt.checked && vozExt) {           
	          verificados++;     
	          criaResultado(verificados, x, voz, voz+1, "cruzamento", 1, 2); } 
          else if (!cruzaExt.checked) {  
	          verificados++;     
	          criaResultado(verificados, x, voz, voz+1, "cruzamento", 1, 2);
          };
       };
    
    };
    
  }; // acordes

}  
function overlapping() {
	
  for (var x=1;x<vozes.length;x++) { // percorre acordes
                  
    for (var voz=0; voz < vozes[x].nota.length; voz++) { // percorre vozes
     
      var i;
      var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
                    
      for (i=voz+1; i < vozes[x].nota.length; i++) { // percorre outras vozes
        
         var dir2 = direção(vozes[x].nota[i] - vozes[x-1].nota[i]);
        
        if (vozes[x].nota[voz] != vozes[x].nota[i]) {
        	 
         if (dir1 == dir2 && dir1 == 1 && vozes[x-1].nota[voz] < vozes[x].nota[i])  {  // testa overlapping asc
               	verificados++;
               	criaResultado(verificados, x, voz, i, "overlapping", 2, 2);};
         
         if (dir1 == dir2 && dir1 == -1 && vozes[x-1].nota[i] > vozes[x].nota[voz])  {  // testa overlapping desc
               	verificados++;
               	criaResultado(verificados, x, voz, i, "overlapping", 2, 2);}; 
        };                    
      };
    };
  };
}

function unissono() {
  
  var int1;
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
    
    for (var voz=1;voz<vozes[x].nota.length;voz++) {
      
      int1 = vozes[x].nota[voz-1] - vozes[x].nota[voz];
  
      if (int1 == 0) { 
        verificados++;     
    	  criaResultado(verificados, x, voz-1, voz, "uníssono", 1, 2); };   
    };  	
  }; 
}

function falsaRelação() {
  for (var x=1;x<vozes.length;x++) { // percorre acordes
                  
    for (var voz=0; voz < vozes[x].nota.length; voz++) { // percorre vozes
      
      var int1 = Math.abs(vozes[x].tonal[voz] - vozes[x-1].tonal[voz]);
      if (int1 == 7) { continue; };
                    
      for (var i=0; i < vozes[x].nota.length; i++) { // percorre outras vozes
         if (i == voz) { continue; };
        
         var int2 = Math.abs(vozes[x-1].tonal[voz] - vozes[x].tonal[i]);
         
         if (int2 == 7)  {  // testa falsa relação
               	verificados++;
               	criaResultado(verificados, x, voz, i, "falsa relação", 2, "fr"); };
                              
      };
    };
  };
}

function resolveSens() {
    
    var tonica = tonicaTPC(btTonica.text, btAcid.text); 
    var sensivel =  tonica + 5;
    var recGrau = reconheceGrau(0); if (!recGrau && recGrau !== 0) { return; };
    var acordeAnt = acordeGrau[recGrau].Grau;
    var acordeAtual;
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
    
    var contemTonica = false;
    var cond = "", sel = "";
    var libVoz = false;
    var libAcorde =  false;
    
    if (x>1) {acordeAnt = acordeAtual;};
    
    recGrau = reconheceGrau(x); if (!recGrau && recGrau !== 0) { return; };
    
    acordeAtual = acordeGrau[recGrau].Grau;
    
    if (acordeAtual.substr(-1,1) == "O") { acordeAtual = acordeAtual.slice(0, acordeAtual.length-1)}
	
	 for (var voz=0; voz < vozes[x].tonal.length; voz++) { // verifica se acorde atual contém a tônica
	    if (vozes[x].tonal[voz] == tonica) { contemTonica = true; }
	 };
	 
	 for (var voz=0; voz < vozes[x].tonal.length; voz++) { // verifica resolução em todas as vozes
	  
	   if (vozes[x].tonal[voz] != tonica && vozes[x-1].tonal[voz] == sensivel && contemTonica) { 
			
			if ((acordeAnt == "V" || acordeAnt == "V7") && (acordeAtual == "I" || acordeAtual == "i" || acordeAtual == "I7" || 
																			acordeAtual == "i7")) { cond = cond+"a";}; // V-I
		   if ((acordeAnt == "V" || acordeAnt == "V7") && (acordeAtual == "vi" || acordeAtual == "VI" ||  acordeAtual == "vi7" || 
																			acordeAtual == "VI7")) { cond = cond+"b";}; // V-vi
			
			if ((sensivelExt.checked && voz == 0) || !sensivelExt.checked ) { libVoz = true; } else { libVoz = false; };
			if ((sensivelVI.checked && cond.substr(0,1) == "a") || (sensivelVvi.checked && cond.substr(-1,1) == "b") ||
			      (!sensivelVI.checked && !sensivelVvi.checked)) { libAcorde = true; } else { libAcorde = false; };
			
			if (libVoz && libAcorde) {	     
			      verificados++;     
			      criaResultado(verificados, x, voz, voz+1, "sensível não resolveu na tônica", 2, 1); 
			};     
	   };
	   
	 };
	                  
  };	   

}

function resolve43() {
    
    var tonica = tonicaTPC(btTonica.text, btAcid.text); 
    var terça = tonica + 4;
    var sensivel =  tonica - 1;
    var acordeAnt = acordeGrau[reconheceGrau(0)].Grau;
    var acordeAtual;
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
    
    var contemTerça = false;
    var cond = "", sel = "";
    var libVoz = false;
    var libAcorde =  false;
    
    if (x>1) {acordeAnt = acordeAtual;};
    
    acordeAtual = acordeGrau[reconheceGrau(x)].Grau;
    if (acordeAtual.substr(-1,1) == "O") { acordeAtual = acordeAtual.slice(0, acordeAtual.length-1)}
	
	 for (var voz=0; voz < vozes[x].tonal.length; voz++) { // verifica se acorde atual contém a terça
	    if (vozes[x].tonal[voz] == terça) { contemTerça = true; }
	 };
	 
	 for (var voz=0; voz < vozes[x].tonal.length; voz++) { // verifica resolução em todas as vozes
	  
	   if (vozes[x].tonal[voz] != terça && vozes[x-1].tonal[voz] == sensivel && contemTerça) { 
			
			if ((acordeAnt == "V" || acordeAnt == "V7") && (acordeAtual == "I" || acordeAtual == "i" || acordeAtual == "I7" || 
																			acordeAtual == "i7")) { cond = cond+"a";}; // V-I
		   if ((acordeAnt == "V" || acordeAnt == "V7") && (acordeAtual == "vi" || acordeAtual == "VI" ||  acordeAtual == "vi7" || 
																			acordeAtual == "VI7")) { cond = cond+"b";}; // V-vi
		
			if ((res43Ext.checked && voz == 0) || !res43Ext.checked ) { libVoz = true; } else { libVoz = false; };
			if ((res43VI.checked && cond.substr(0,1) == "a") || (res43Vvi.checked && cond.substr(-1,1) == "b") ||
			      (!res43VI.checked && !res43Vvi.checked)) { libAcorde = true; } else { libAcorde = false; };
			
			if (libVoz && libAcorde) {	     
			      verificados++;     
			      criaResultado(verificados, x, voz, voz+1, "4^ não resolveu no 3^", 2, 1); 
			};     
	   }; 
	 };                  
  };	   
}

function segInvDissonancia() {
  
  if (vozes.length<3) {msgErros.text += "Não possui a quantidade mínima de acordes para a verificação do tratamento da 2ª inversão!\n"; 
                       msgErros.estado = true; return; }  
  var grau = reconheceGrau(0); if (!grau && grau !== 0) { return; };
  var acorde1 = acordeGrau[grau].Grau;
  var pos1 = reconheceInversão(grau, vozes[0].tonal[vozes[0].tonal.length-1]);
  grau = reconheceGrau(1); if (!grau && grau !== 0) { return; } 
  var acorde2 = acordeGrau[grau].Grau;
  var pos2 = reconheceInversão(grau, vozes[1].tonal[vozes[1].tonal.length-1]);
  var acorde3, pos3;
  var vB1 = vozes[0].nota[vozes[0].nota.length-1]; // voz do Baixo
  var vB2 = vozes[1].nota[vozes[1].nota.length-1];
  var vB3;
  
  for (var x=2;x<vozes.length;x++) { // percorre acordes
    
    var gConj1 = false; var gConj2 = false;
    var arp1 = false; var arp2 = false;
    var bPara1 = false; var bPara2 = false;
    var seguidos = false;
    var texto = "2ª inversão: dissonância não tratada";
    
    if (x > 2) { acorde1 = acorde2; pos1 = pos2; vB1 = vB2; acorde2 = acorde3; pos2 = pos3; vB2 = vB3; };
    
    grau = reconheceGrau(x); if (!grau && grau !== 0) { continue; } 
    acorde3 = acordeGrau[grau].Grau; 
    
    pos3 = reconheceInversão(grau, vozes[x].tonal[vozes[x].tonal.length-1]);
    vB3 = vozes[x].nota[vozes[x].nota.length-1];
    
    if (pos2 == 2) {
      
    var int1 = Math.abs(vB1-vB2); var int2 = Math.abs(vB3-vB2);  
    // verifica condições
    if (int1 < 3 && int1 > 0) { gConj1 = true; } else if (int1 == 0) { bPara1 = true; } ; // grau conjunto e baixo parado
    if (int2 < 3 && int2 > 0) { gConj2 = true; } else if (int2 == 0) { bPara2 = true; } ; 
    if (acorde1 == acorde2 && pos1 != pos2) { arp1 = true; } ; // arpejo
    if (acorde3 == acorde2 && pos3 != pos2) { arp2 = true; } ; 
    if (pos1 == 2 || pos3 == 2) { seguidos = true; }; // acordes seguidos em segunda inversão
    
    if (!segInvConj.checked) { gConj1 = false; gConj2 = false; };
    if (!segInvArp.checked) { arp1 = false; arp2 = false; };
    if (!segInvPara.checked) { bPara1 = false; bPara2 = false; };
       
    if ((!gConj1 && !arp1 && !bPara1) || (!gConj2 && !arp2 && !bPara2) || seguidos) { 
      verificados++;     
      criaResultado(verificados, x-1, 0, vozes[x-1].nota.length-1, texto, 1, vozes[x].nota.length); 
    };
    
    };
  
  };
}

function trataDissonancias() {
  
  if (vozes.length<3) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação do tratamento de dissonâncias!\n"; 
                        msgErros.estado=true; return; };
                         
  var tom = tonicaTPC(btTonica.text, btAcid.text);                      
  var acorde1 = false, acorde2 = false, acorde3 = false;
  var diss1=[], diss2=[], diss3=[];
  var notas1=[], notas2=[], notas3=[];
    
  for (var x=0;x<vozes.length;x++) { // percorre acordes
       
    if (x == 1) { acorde2 = acorde3; diss2 = diss3; notas2 = notas3; };
    if (x >= 2) { acorde1 = acorde2; acorde2 = acorde3; 
                  diss1 = diss2; diss2 = diss3; 
                  notas1 = notas2; notas2 = notas3; 
                  };
    
    var grau = reconheceGrau(x); if (!grau && grau !== 0) { continue; };
   
    switch (acordeGrau[grau].modo) {   // se for com omissão, verificar no acorde completo correspondente;
     case "M": if (acordeGrau[grau].Grau.substr(-1,1) == "O"){ grau = grau - 7;}; break;
     case "m": if (acordeGrau[grau].Grau.substr(-1,1) == "O"){ grau = grau - 15;}; break;
    };
   
    notas3 = acordeGrau[grau].tpc;
     
    var cifra = acordeGrau[grau].Grau.substr(-1,1);
   
    if (cifra == "7" || cifra == "+" || cifra == "°" || cifra == "ø" || cifra == "M") { acorde3 = true; } else { acorde3 = false; };
    
    diss3 = acordeGrau[grau].diss;
    
    if (x > 1 && acorde2) { // segue para verificações, se acorde2 é dissonante

	    for (var voz=0; voz < vozes[x].tonal.length; voz++) { // percorre vozes
	     
	      var sus = false, NP = false, BS = false, BI = false, Ap = false, Ret = false, Ant = false, Esc = false, ped = false, reso = false;
	    
	      var dissAtual = identificaDisso(diss2, x-1, voz, notas2);
	     
         if (dissAtual) {	
          
	      // var dissPreparação = identificaDisso(diss1, x-2, voz, notas1);
	       var dissResolução = identificaDisso(diss3, x, voz, notas3);
	    
		    var int1 = vozes[x-1].nota[voz]-vozes[x-2].nota[voz]; 
		    var int2 = vozes[x].nota[voz]-vozes[x-1].nota[voz]; 
		    var int3 = vozes[x].nota[voz]-vozes[x-2].nota[voz]; 
		    
		    // verifica condições
		    if (dissSusp.checked) {                                     // suspensão
		      if (int1 == 0 && int2 > -3 && int2 < 0) { sus = true; }; }; 
		    if (dissNP.checked) {                                       // nota de passagem
		      if ((int1 > - 3 && int1 < 0 && int2 > -3 && int2 < 0) || 
		          (int1 < 3 && int1 > 0 && int2 < 3 && int2 > 0)) { NP = true; }; };
		    if (dissBordS.checked) {                                     // bordadura superior
		       if (int1 < 3 && int1 > 0 && int2 > -3 && int2 < 0) { BS = true; }; };
		     if (dissBordI.checked) {                                     // bordadura inferior
		       if (int1 > -3 && int1 < 0 && int2 < 3 && int2 > 0) { BI = true; }; };
		    if (dissAp.checked) {                                      // apojatura
		       if (int1 > 0 && int2 > -3 && int2 < 0) { Ap = true; }; };
		    if (dissRet.checked) {                                     // retardo
		       if (int1 == 0 && int2 < 3 && int2 > 0) { Ret = true; }; };
			 if (dissAnt.checked) {                                     // antecipação
			    if (int1 != 0 && int2 == 0) { Ant = true; }; };
			 if (dissEsc.checked) {                                     // escapada
			    if (int1 < 3 && int1 > 0 && int2 < -2 && int3 > -5 && int3 < 0) { Esc = true; }; };
			 if (dissPed.checked) {                                     // nota pedal
			    if (int1 == 0 && int2 == 0) { ped = true; }; };   
		    if (dissRes.checked) { 											   // resolução descendente
		       if (int2 > -3 && int2 < 0) { reso = true;}; };
		       
		    if (dissDiss.checked && dissResolução) {         // dissonancia preparada ou resolvida em outra dissonancia
		    
		      if (dDissB.checked) { 
		        if (voz == vozes[x].tonal.length-1) { 
       			 verificados++;     
		      	 criaResultado(verificados, x, voz, voz, "diss. preparada/resolvida em diss.", 2, 1); };
		      } else {
		      verificados++;     
		      criaResultado(verificados, x, voz, voz, "diss. preparada/resolvida em diss.", 2, 1); };
		    };
		 	  		   
		    if (!sus && !NP && !BS && !BI && !Ap && !Ret && !Ant && !Esc && !ped && !reso) { 
		      verificados++;     
		      criaResultado(verificados, x-1, voz, voz, "dissonância não tratada", 1, 1); 
		    };
		   };
	    };
    };
  };
  
  function identificaDisso(diss, acorde, voz, notas) {   // função para identificar se a nota da voz atual é uma dissonancia 
    if (diss && diss.length>0) { 
     for (var d=0; d<diss.length;d++) {       
       var tpcAtual = notas[diss[d]] + tom;
       if (tpcAtual == vozes[acorde].tonal[voz]) { return true;};
      };
    };
    return false;
   };
}

function melodiaAum() {
 
 if (vozes.length<2) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de intervalo melódico aumentado!\n"; 
                        msgErros.estado = true; return; };
 
 var tom = tonicaTPC(btTonica.text, btAcid.text);  
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var intervalo = vozes[x].nota[voz] - vozes[x-1].nota[voz];
   var g1 = verificaGrauMelodico(vozes[x-1].tonal[voz], tom);
   var g2 = verificaGrauMelodico(vozes[x].tonal[voz], tom);
    
   if ((intervalo == 6 && g1 == 4 && g2 == 7) || (intervalo == 6 && g1 == 6 && g2 == 2) ||
       (intervalo == 3 && g1 == 6 && g2 == 7) || (intervalo == 6 && g1 == 3 && g2 == 6) ||
       (intervalo == -6 && g1 == 7 && g2 == 4) || (intervalo == -6 && g1 == 2 && g2 == 6) ||
       (intervalo == -3 && g1 == 7 && g2 == 6) || (intervalo == -6 && g1 == 6 && g2 == 3)) { 
      verificados++;     
      criaResultado(verificados, x, voz, voz, "intervalo melódico aumentado", 2, 1); 
    };
  };
 }; 
}

function melodiaDim() {
 
 if (vozes.length<3) { msgErros.text += "Não possui a quantidade mínima de acordes \n para a verificação de intervalo melódico diminuto!\n"; 
                       msgErros.estado = true; return; };
 
 var tom = tonicaTPC(btTonica.text, btAcid.text);  
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=2;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var int1 = vozes[x-1].nota[voz] - vozes[x-2].nota[voz];
   var int2 = vozes[x].nota[voz] - vozes[x-1].nota[voz];
   var g1 = verificaGrauMelodico(vozes[x-2].tonal[voz], tom);
   var g2 = verificaGrauMelodico(vozes[x-1].tonal[voz], tom);
 // console.log(voz+") acorde: "+x+" | int1: "+intervalo+" | g1: "+g1+" | g2: "+g2) 
   
   if ((int1 == 6 && g1 == 7 && g2 == 4) || (int1 == 6 && g1 == 2 && g2 == 6) ||
       (int1 == 3 && g1 == 7 && g2 == 6) || (int1 == 6 && g1 == 6 && g2 == 3) ||
       (int1 == -6 && g1 == 4 && g2 == 7) || (int1 == -6 && g1 == 6 && g2 == 2) ||
       (int1 == -3 && g1 == 6 && g2 == 7) || (int1 == -6 && g1 == 3 && g2 == 6)) { 
       
     if (melDimMuda.checked && ((int1 > 0 && int2 < 0 && int2 > -3) ||
         (int1 < 0 && int2 > 0 && int2 < 3))) { continue; };
         
      verificados++;     
      criaResultado(verificados, x-1, voz, voz, "intervalo melódico diminuto", 2, 1); 
    };
  };
 }; 
}

function melodia7() {
 
 if (vozes.length<2) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Salto de sétima!\n"; 
                        msgErros.estado=true; return; };
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var intervalo = Math.abs(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
    
   if (intervalo == 10 || intervalo == 11) { 
      verificados++;     
      criaResultado(verificados, x, voz, voz, "intervalo melódico de 7ª", 2, 1); 
    };
  };
 }; 
}

function melodia8() {
 
 if (vozes.length<2) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Saltos maiores do que a oitava!\n "; 
                        msgErros.estado=true; return; };
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=1;x<vozes.length;x++) { // percorre acorde
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var intervalo = Math.abs(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
    
   if (intervalo > 12) { 
      verificados++;     
      criaResultado(verificados, x, voz, voz, "intervalo melódico > 8ª", 2, 1); 
    };
  };
 }; 
}

function melodia4() {
 
 if (vozes.length<4) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Saltos maiores do que a quarta justa!\n"; 
                       msgErros.estado=true; return; };
 
 var cond1 = false, cond2 = false, cond3 = false; 
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=3;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var marca1 = false, marca2 = false, marca3 = false;
   var int1 = Math.abs(vozes[x-1].nota[voz] - vozes[x-2].nota[voz]);
   var int2 = Math.abs(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
   var dir1 = direção(vozes[x-2].nota[voz] - vozes[x-3].nota[voz]);
   var dir2 = direção(vozes[x-1].nota[voz] - vozes[x-2].nota[voz]);
   var dir3 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);

   if (int1 > 5) { 
       
     if (dir1 != dir2 && dir1 != 0) { cond1 = true; } else { cond1 = false; }; //atingido na direção oposta 
     if (dir3 != dir2 && dir3 != 0) { cond2 = true; } else { cond2 = false; }; //resolvido na direção oposta
     if (int2 < 3 && dir3 != 0) { cond3 = true; } else { cond3 = false; };  //resolve por grau conjunto
     
     if (mel4Op.checked) { if (cond1) { marca1 = false } else { marca1 = true }; } else { marca1 = true };
     if (mel4r.checked) { if (cond2) { marca2 = false } else { marca2 = true }; } else { marca2 = true };
     if (mel4cj.checked) { if (cond3) { marca3 = false } else { marca3 = true }; } else { marca3 = true };
    
     if (marca1 && marca2 && marca3) {       
      verificados++;     
      criaResultado(verificados, x-1, voz, voz, "intervalo melódico > 4ªJ", 2, 1); 
     };
   };
  };
 }; 
}

function melodia2Salt() { 
  
 if (vozes.length<3) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Saltos consecutivos na mesma direção!\n"; 
                       msgErros.estado=true; return; };
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=2;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var int1 = Math.abs(vozes[x-1].nota[voz] - vozes[x-2].nota[voz]);
   var int2 = Math.abs(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
   var dir1 = direção(vozes[x-1].nota[voz] - vozes[x-2].nota[voz]);
   var dir2 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);

   if (int1 > 2 && int2 > 2 && dir1 == dir2 && dir1 != 0) { 
     
    if (mel2tri.checked && ((int1 == 3 && int2 == 3) || //dim
     								 (int1 == 3 && int2 == 4) ||  //m
     								 (int1 == 4 && int2 == 3) ||  //M
     								 (int1 == 4 && int2 == 4) ||  //A
     								 (int1 == 3 && int2 == 6) ||  //dim6
     								 (int1 == 4 && int2 == 5) ||  //m6
     								 (int1 == 3 && int2 == 5) ||  //M6
     								 (int1 == 6 && int2 == 3) ||  //dim64
     								 (int1 == 5 && int2 == 3) ||  //m64
     								 (int1 == 5 && int2 == 4)   //M64
     								 )) { continue; };
     
      verificados++;     
      criaResultado(verificados, x, voz, voz, "saltos na mesma direção", 3, 1); 
   };
  };
 };

}

function melodiaDC() {
  
 if (vozes.length<3) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Dissonância composta!\n"; 
                       msgErros.estado=true; return; };
 
 for (var voz=0; voz < 10; voz++) { // percorre vozes
  
  for (var x=2;x<vozes.length;x++) { // percorre acordes
   if (!vozes[x].nota[voz] || !vozes[x-1].nota[voz]) {return;};
   
   var int1 = Math.abs(vozes[x].nota[voz] - vozes[x-2].nota[voz]);
   var dir1 = direção(vozes[x-1].nota[voz] - vozes[x-2].nota[voz]);
   var dir2 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);

   if ((int1 == 10 || int1 == 11 || int1 == 13 || int1 == 14 || int1 == 18)  && dir1 == dir2 && dir1 != 0) { 
        
      verificados++;     
      criaResultado(verificados, x, voz, voz, "dissonância composta", 3, 1); 
   };
  };
 };	
}

function melodiaPF() {
 
 if (vozes.length<3) { msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de Ponto focal!\n"; 
                       msgErros.estado=true; return; };
 
 var vozSup = [], vozInf = [];
 var pfSs = 0, pfIs = 0, pfSi = 127, pfIi = 127;  // ponto focal da voz Superior/Inferior, inferior/superior 
 var pfSsc = 0, pfSic = 0, pfIsc = 0, pfIic = 0; // var para contagem dos pontos focais;
  
 for (var x=0;x<vozes.length;x++) { // percorre acordes para encontrar pontos focais
  
   vozSup[x] = vozes[x].nota[0];
   vozInf[x] = vozes[x].nota[vozes[x].nota.length-1];
   
   if (vozSup[x] > pfSs) { pfSs = vozSup[x]; };
   if (vozInf[x] > pfIs) { pfIs = vozInf[x]; };
   if (vozSup[x] < pfSi) { pfSi = vozSup[x]; };
   if (vozInf[x] < pfIi) { pfIi = vozInf[x]; };
    
 };
 
 for (var x=0;x<vozes.length;x++) { // percorre acordes
   
   var baixo = vozes[x].nota.length-1;
   
   if (vozSup[x] == pfSs) { pfSsc++; // contagem dos pontos focais voz superior;
     if ((x>0 && vozSup[x-1] == pfSs) || (x == vozes.length-1 && vozSup[0] == pfSs)) { pfSsc--; } else
     if (melPFs.checked && pfSsc > 1) { verificados++; criaResultado(verificados, x, 0, 0, "repete ponto focal superior", 1, 1); }; }; 
   if (vozSup[x] == pfSi) { pfSic++;
     if ((x>0 && vozSup[x-1] == pfSi) || (x == vozes.length-1 && vozSup[0] == pfSi)) { pfSic--; } else
     if (!melPFsS.checked && pfSic > 1) { verificados++; criaResultado(verificados, x, 0, 0, "repete ponto focal inferior", 1, 1); }; };
   if (vozInf[x] == pfIs) { pfIsc++; // contagem dos pontos focais voz inferior;
     if ((x>0 && vozInf[x-1] == pfIs) || (x == vozes.length-1 && vozInf[0] == pfIs)) { pfIsc--; } else
     if (melPFi.checked && pfIsc > 1) { verificados++; criaResultado(verificados, x, baixo, baixo, "repete ponto focal superior", 1, 1); }; }; 
   if (vozInf[x] == pfIi) { pfIic++;
     if ((x>0 && vozInf[x-1] == pfIi) || (x == vozes.length-1 && vozInf[0] == pfIi)) { pfIic--; } else
     if (!melPFiS.checked && pfIic > 1) { verificados++; criaResultado(verificados, x, baixo, baixo, "repete ponto focal inferior", 1, 1); }; };
 
 };

}

function variedadeDirecionamento() { 
 
 // alertar se houver acorde com qtd diferente de notas e cancelar verificação;
 
 /*if (vozes.length<2) { msgErros.text = "Não possui a quantidade mínima de acordes para a verificação de Saltos maiores do que a oitava!\n "; 
                        msgErros.visible=true; return; };*/
 
 var qtMov = parseInt(varDirQt.text);
 
 for (var voz=0; voz < vozes[0].nota.length; voz++) { // percorre vozes
  
  if (!varMelS.checked && voz == 0) { continue; };
  if (!varMelG.checked && voz == vozes[0].nota.length-1) { continue; }; 
  if (!varMelI.checked && (voz != 0 && voz != vozes[0].nota.length-1)) { continue; };  
  
  var asc = [], desc = [], mov = []; 
  var qtA = 0, qtD = 0, qtN = 0;
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes
   
   var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
   
   mov[x-1] = dir1;
   
   if (x>=2 && mov[x-1] != mov[x-2]) { testaQt(qtN); asc = []; qtA = 0; desc = []; qtD = 0;};
   
   if (dir1 == 0) { qtN = 0; }; 
   if (dir1 == 1) { asc[qtA] = dir1; qtA++; qtN = asc.length; }; 
   if (dir1 == -1) { desc[qtD] = dir1; qtD++; qtN = desc.length; };
   
  };
  testaQt(qtN);
 };
 
 function testaQt(qt) { 
   if (qt > qtMov) { 
           verificados++;     
           criaResultado(verificados, x-1, voz, voz, "movimentos na mesma direção", qt+1, 1); };
 }; 
 
}

function repetiçãoNotas() {
//console.log("=================repetição================") 
	var qtRep = parseInt(repNotaQt.text);
 
 for (var voz=0; voz < vozes[0].nota.length; voz++) { // percorre vozes
  
  if (!varMelS.checked && voz == 0) { continue; };
  if (!varMelG.checked && voz == vozes[0].nota.length-1) { continue; }; 
  if (!varMelI.checked && (voz != 0 && voz != vozes[0].nota.length-1)) { continue; };  
  
  var mov = []; var qt = 0;
  
  for (var x=1;x<vozes.length;x++) { // percorre acordes

   var dir1 = direção(vozes[x].nota[voz] - vozes[x-1].nota[voz]);
   
   if (dir1 == 0) { mov[qt] = dir1; qt++; } 
     else {  testaRep(); mov = []; qt = 0; };
    
  };
  
  testaRep();
  
 };
 
 function testaRep() {
	if (mov.length > qtRep) { verificados++;     
                              criaResultado(verificados, x-1, voz, voz, "repetição de notas", mov.length+1, 1); };
 };
}

function repetePadrão() {
	
 if (vozes.length<4) {msgErros.text += "Não possui a quantidade mínima de acordes para a verificação de repetição de padrão melódico!\n"; 
                       msgErros.estado=true; return; } 
 var qtRep = parseInt(repPadQt.text);
 
 for (var voz=0; voz < vozes[0].nota.length; voz++) { // percorre vozes
  
  if (!varMelS.checked && voz == 0) { continue; };
  if (!varMelG.checked && voz == vozes[0].nota.length-1) { continue; }; 
  if (!varMelI.checked && (voz != 0 && voz != vozes[0].nota.length-1)) { continue; };  
  
  for (var x=4;x<vozes.length;x++) { // percorre acordes

   if (vozes[x].nota[voz] == vozes[x-2].nota[voz] && vozes[x-1].nota[voz] == vozes[x-3].nota[voz]
       && vozes[x].nota[voz] != vozes[x-1].nota[voz]) { verRepPad(4); };
  
   if (x >= 6 && vozes[x].nota[voz] == vozes[x-3].nota[voz] && vozes[x-1].nota[voz] == vozes[x-4].nota[voz]
       && vozes[x-2].nota[voz] == vozes[x-5].nota[voz] && vozes[x].nota[voz] != vozes[x-1].nota[voz]) { verRepPad(6); };
  };
 };
 
 function verRepPad(numAcordes) {
	 verificados++;     
    criaResultado(verificados, x, voz, voz, "repetição de padrão mel.", numAcordes, 1); 
 };
}

function extensãoMelodica() {
	
  for (var voz=0; voz < vozes[0].nota.length; voz++) { // percorre vozes
  
   if (!extMelS.checked && voz == 0) { continue; };
   if (!extMelG.checked && voz == vozes[0].nota.length-1) { continue; }; 
   if (!extMelI.checked && (voz != 0 && voz != vozes[0].nota.length-1)) { continue; }; 
   
   var agudo = 0, grave = 128;
   var pos1, pos2, posI, posF;
   
   for (var i=0;i<vozes.length;i++) { // detecta as extremidades da melodia
     var nota = vozes[i].nota[voz];
     if (nota > agudo) { agudo = nota; pos1 = i; };
     if (nota < grave) { grave = nota; pos2 = i; };
   
   };  
   
   if (pos1 > pos2) { posI = pos2; posF = pos1; } else { posI = pos1; posF = pos2; };   
   
   var extensao = agudo - grave;
   var numAcordes = (posF - posI)+1;
   var extQt = parseInt(extMelQt.text);
   
   if (extensao > extQt) {   
     verificados++;     
     criaResultado(verificados, posF, voz, voz, "extensão da melodia", numAcordes, 1); 
   };   
  };
}

function espaçamento() {
  
  var int1;
  var intSup = parseInt(espS.text), intBai = parseInt(espB.text) 
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
    
    for (var voz=1;voz<vozes[x].nota.length;voz++) {
      
      int1 = vozes[x].nota[voz-1] - vozes[x].nota[voz];
  
      if (voz < vozes[x].nota.length-1 && int1 > intSup) { marcaEspaço(x,voz); };
      if (voz == vozes[x].nota.length-1 && int1 > intBai) { marcaEspaço(x,voz); };
      
    };  	
  };
  
  function marcaEspaço(x,voz) { 
    verificados++;     
    criaResultado(verificados, x, voz-1, voz, "espaçamento máximo", 1, 2); 
  };

}

function extensVozes() {
  
 if (vozes[0].nota.length!=4) { msgErros.text += "Verificação de extensão das vozes pode ser aplicada somente em texturas de 4 vozes!\n"; 
                                msgErros.estado=true; return; };
                      
 var sopS = n2m(sop2.text), sopI = n2m(sop1.text), altS = n2m(alto2.text), altI = n2m(alto1.text);
 var tenS = n2m(ten2.text), tenI = n2m(ten1.text), baiS = n2m(bxo2.text), baiI = n2m(bxo1.text);
 
 for (var voz=0;voz<4;voz++) { // percorre vozes 
	
	 for (var x=0;x<vozes.length;x++) { // percorre acordes 
	   if (voz == 0 && (vozes[x].nota[voz] > sopS || vozes[x].nota[voz] < sopI)) { marcaExtensão(x,0); };
	   if (voz == 1 && (vozes[x].nota[voz] > altS || vozes[x].nota[voz] < altI)) { marcaExtensão(x,1); };
	   if (voz == 2 && (vozes[x].nota[voz] > tenS || vozes[x].nota[voz] < tenI)) { marcaExtensão(x,2); };
	   if (voz == 3 && (vozes[x].nota[voz] > baiS || vozes[x].nota[voz] < baiI)) { marcaExtensão(x,3); };
	 };
 
 };
 
 function marcaExtensão(x,voz) {
 	verificados++;
 	criaResultado(verificados, x, voz, voz, "fora da extensão vocal", 1, 1);
 };
 
}

function acordeSemTerça() { 
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
   
    if (vozes[0].nota.length < 3) { continue; }; 
  
    var pcL = removeRepetição(vozes[x].tonal)
    
    if (vozes[x].nota.length > 3 && pcL.length < 3) { continue; };
    
    var omitida = reconheceOmissão(vozes[x].tonal);
    
    if ((omitida.length == 1 && omitida[0] == 3) || omitida.length == 2) {
      verificados++;
 	   criaResultado(verificados, x, 0, vozes[x].tonal.length-1, "acorde sem terça", 1, vozes[x].tonal.length);
    };   
  }; 
}

function menos3PCs() {
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
    
    if (vozes[0].nota.length < 4) { continue; }; 
    
    var acordeX = removeRepetição(vozes[x].tonal);
    
    if (acordeX.length < 3) { 
      verificados++;
 	   criaResultado(verificados, x, 0, vozes[x].tonal.length-1, "acorde com menos de 3 PCs", 1, vozes[x].tonal.length);
    };
    
  };
}

function dobramentoTerça() {

  for (var x=0;x<vozes.length;x++) { // percorre acordes 
  
    var nota = reconheceDobramento(x);
    var grau = reconheceGrau(x);
  
    for (var i=0;i<nota.length;i++) {
    
     var dobrada = reconheceInversão(grau, nota[i]);
    
     if (dobrada == 1 && acordeGrau[grau].Grau != "vii°" && acordeGrau[grau].Grau != "vii°7" &&
     		acordeGrau[grau].Grau != "ii°" && acordeGrau[grau].Grau != "ii°7" && acordeGrau[grau].Grau != "vi°" &&
     		acordeGrau[grau].Grau != "vi°7" && acordeGrau[grau].Grau != "viiø" && acordeGrau[grau].Grau != "viø" &&
			acordeGrau[grau].Grau != "iiø" && acordeGrau[grau].Grau != "viiøO" && acordeGrau[grau].Grau != "viøO" &&
		   acordeGrau[grau].Grau != "iiøO" && acordeGrau[grau].Grau != "vii°7O" && acordeGrau[grau].Grau != "ii°7O" &&
			acordeGrau[grau].Grau != "III+" && acordeGrau[grau].Grau != "III+7" && acordeGrau[grau].Grau != "III+7O") {
      verificados++;
 	   criaResultado(verificados, x, 0, vozes[x].tonal.length-1, "dobramento de terça", 1, vozes[x].tonal.length);
     };
    };
  };

}

function dobramentoSetima() {
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
  
    var nota = reconheceDobramento(x);
    var grau = reconheceGrau(x);
  
    for (var i=0;i<nota.length;i++) {
    
     var dobrada = reconheceInversão(grau, nota[i]);
    
     if (dobrada == 3) {
      verificados++;
 	   criaResultado(verificados, x, 0, vozes[x].tonal.length-1, "dobramento da sétima", 1, vozes[x].tonal.length);
     };
    };
  };

}

function dobramentoSensivel() {
 //console.log("dobramentoSensivel") 
  var tonica = tonicaTPC(btTonica.text, btAcid.text); 
  var sensivel =  tonica + 5;
  var grauAnt = reconheceGrau(0); if (!grauAnt && grauAnt !== 0) { return; };
  grauAnt = grauSemOmissão(grauAnt);
  var acordeAnt = acordeGrau[grauAnt].Grau;
  var acordeAtual;
    
  for (var x=1;x<vozes.length;x++) { // percorre acordes 
    var grau = reconheceGrau(x); if (!grau && grau !== 0) { return; };
    var nota = reconheceDobramento(x-1);
    grau = grauSemOmissão(grau);
    acordeAtual = acordeGrau[grau].Grau;
    
    for (var i=0;i<nota.length;i++) {
     var cond = "";
     var dobrada = reconheceInversão(grauAnt, nota[i]);
    
     if (dobrada == 3 && (acordeGrau[grauAnt].Grau == "I7" || acordeGrau[grauAnt].Grau == "i7") || // se a sensível está dobrada em qq acorde
         (dobrada == 2 && ((acordeGrau[grauAnt].Grau == "iii" && menuModo.value == 1) ||  
            (acordeGrau[grauAnt].Grau == "III+" && menuModo.value == 2) ||
            (acordeGrau[grauAnt].Grau == "III+7" && menuModo.value == 2))) ||
     		(dobrada == 1 && (acordeGrau[grauAnt].Grau == "V" || acordeGrau[grauAnt].Grau == "V7")) ||
          dobrada == 0 && (acordeGrau[grauAnt].Grau == "vii°" || acordeGrau[grauAnt].Grau == "viiø")) {
          	
         if ((acordeAnt == "V" || acordeAnt == "V7" || acordeAnt == "III+" || acordeAnt == "III+7" || acordeAnt == "vii°" || acordeAnt == "viiø") 
             && (acordeAtual == "I" || acordeAtual == "i" || acordeAtual == "I7" || acordeAtual == "i7")) { cond = cond+"a";}; // V-I
		   if ((acordeAnt == "V" || acordeAnt == "V7" || acordeAnt == "III+" || acordeAnt == "III+7" || acordeAnt == "vii°" || acordeAnt == "viiø") 
		       && (acordeAtual == "vi" || acordeAtual == "VI" ||  acordeAtual == "vi7" || acordeAtual == "VI7")) { cond = cond+"b";}; // V-vi
	
			if ((dSensV2I.checked && cond.substr(0,1) == "a") || (dSensV2vi.checked && cond.substr(-1,1) == "b") ||
			      (!dSensV2I.checked && !dSensV2vi.checked)) {           	
          	
      	  verificados++;
 	   	  criaResultado(verificados, x-1, 0, vozes[x-1].tonal.length-1, "dobramento da sensível", 1, vozes[x-1].tonal.length);
 	   	};
     };
    };
    acordeAnt = acordeAtual; grauAnt = grau;
  };

}

function dobramentoQuinta() {
  
  for (var x=0;x<vozes.length;x++) { // percorre acordes 
  
    var nota = reconheceDobramento(x);
    var grau = reconheceGrau(x); if (!grau && grau !== 0) { return; };
    grau = grauSemOmissão(grau);
    
    for (var i=0;i<nota.length;i++) {
    
     var dobrada = reconheceInversão(grau, nota[i]);
    
     if (dobrada == 2 && (acordeGrau[grau].Grau == "vii°" || acordeGrau[grau].Grau == "viiø" || acordeGrau[grau].Grau == "ii°" ||
                          acordeGrau[grau].Grau == "iiø" || acordeGrau[grau].Grau == "vi°" || acordeGrau[grau].Grau == "viø" ||
                          acordeGrau[grau].Grau == "III+" || acordeGrau[grau].Grau == "III+7")) {
      verificados++;
 	   criaResultado(verificados, x, 0, vozes[x].tonal.length-1, "dobramento da quinta diminuta ou aumentada", 1, vozes[x].tonal.length);
     };
    };
  };
}

 //------------------------------------------------------------------------------
 function criaResultado(verificados, x, voz, i, tipo, numAcordes, numVozes) {
 	
 	var primAcorde = x - (numAcordes-1);
 	var compAnt = Math.floor(vozes[primAcorde].compasso);
 	var compAtual = Math.floor(vozes[x].compasso);
 	var qtdVozes = vozes[x].nota.length;
 	
 	if (compAnt != compAtual && numAcordes > 1) { var compasso = compAnt+" ao "+compAtual;} 
 														  else { var compasso = compAtual; };
 														  
 	switch (numVozes) {
 	   case 1: var qualVoz = ", na voz "+ (voz+1); break;
 	   case "fr":
 	   case 2: var qualVoz = ", entre as vozes "+(voz+1)+" e "+(i+1); break;
 	   case qtdVozes: var qualVoz = ""; break;
 	};													  
 											  
   var texto = verificados+") "+tipo+": compasso "+ compasso + qualVoz;
   
   resultado[verificados] = [texto];
   
   for (var y=primAcorde;y<=x;y++) {
   	
   	switch (numVozes) {
   		case 1: resultado[verificados].push(vozes[y].objeto[voz]); break;
   		case 2: resultado[verificados].push(vozes[y].objeto[voz], vozes[y].objeto[i]); break; 
   		case qtdVozes: for (var k=0;k<qtdVozes;k++) {
   							  resultado[verificados].push(vozes[y].objeto[k]);
   		               }; break;
   		case "fr": if (y == primAcorde) { resultado[verificados].push(vozes[y].objeto[voz]); } 
   						else { resultado[verificados].push(vozes[y].objeto[i]); }; break;
   		  
        };                  
                                                
   };
  //console.log(resultado[verificados][0])
 
 }
 //---------------------------------------------------------          
            
            
                
        
  
  
           
  onRun: { } //onRun:
               
           
} //Musescore:
      