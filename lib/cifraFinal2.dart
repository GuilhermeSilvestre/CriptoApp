import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'constants.dart';

class CifraFinal2 extends StatefulWidget {
  const CifraFinal2({Key? key}) : super(key: key);

  static const String id = "cifrasFinal2";

  @override
  State<CifraFinal2> createState() => _CifraFinal2State();
}

class _CifraFinal2State extends State<CifraFinal2> {
  List<List<String>> matrix =
      new List.generate(27, (i) => List<String>.generate(27, (j) => '0'));

  // Tabula Recta ou Grade de Vigenère
  void initMatrix() {
    //CLUNA 0 - REFERENTE A CHAVE
    matrix[1][0] = 'A';
    matrix[2][0] = 'B';
    matrix[3][0] = 'C';
    matrix[4][0] = 'D';
    matrix[5][0] = 'E';
    matrix[6][0] = 'F';
    matrix[7][0] = 'G';
    matrix[8][0] = 'H';
    matrix[9][0] = 'I';
    matrix[10][0] = 'J';
    matrix[11][0] = 'K';
    matrix[12][0] = 'L';
    matrix[13][0] = 'M';
    matrix[14][0] = 'N';
    matrix[15][0] = 'O';
    matrix[16][0] = 'P';
    matrix[17][0] = 'Q';
    matrix[18][0] = 'R';
    matrix[19][0] = 'S';
    matrix[20][0] = 'T';
    matrix[21][0] = 'U';
    matrix[22][0] = 'V';
    matrix[23][0] = 'W';
    matrix[24][0] = 'X';
    matrix[25][0] = 'Y';
    matrix[26][0] = 'Z';
    // FIM DA COLUNA 0
    //LINHA 0 - REFERENTE A CHAVE
    matrix[0][1] = 'A';
    matrix[0][2] = 'B';
    matrix[0][3] = 'C';
    matrix[0][4] = 'D';
    matrix[0][5] = 'E';
    matrix[0][6] = 'F';
    matrix[0][7] = 'G';
    matrix[0][8] = 'H';
    matrix[0][9] = 'I';
    matrix[0][10] = 'J';
    matrix[0][11] = 'K';
    matrix[0][12] = 'L';
    matrix[0][13] = 'M';
    matrix[0][14] = 'N';
    matrix[0][15] = 'O';
    matrix[0][16] = 'P';
    matrix[0][17] = 'Q';
    matrix[0][18] = 'R';
    matrix[0][19] = 'S';
    matrix[0][20] = 'T';
    matrix[0][21] = 'U';
    matrix[0][22] = 'V';
    matrix[0][23] = 'W';
    matrix[0][24] = 'X';
    matrix[0][25] = 'Y';
    matrix[0][26] = 'Z';
    // FIM DA LINHA 0
    //Referente a letra A - LINHA 1
    matrix[1][1] = 'A';
    matrix[1][2] = 'B';
    matrix[1][3] = 'C';
    matrix[1][4] = 'D';
    matrix[1][5] = 'E';
    matrix[1][6] = 'F';
    matrix[1][7] = 'G';
    matrix[1][8] = 'H';
    matrix[1][9] = 'I';
    matrix[1][10] = 'J';
    matrix[1][11] = 'K';
    matrix[1][12] = 'L';
    matrix[1][13] = 'M';
    matrix[1][14] = 'N';
    matrix[1][15] = 'O';
    matrix[1][16] = 'P';
    matrix[1][17] = 'Q';
    matrix[1][18] = 'R';
    matrix[1][19] = 'S';
    matrix[1][20] = 'T';
    matrix[1][21] = 'U';
    matrix[1][22] = 'V';
    matrix[1][23] = 'W';
    matrix[1][24] = 'X';
    matrix[1][25] = 'Y';
    matrix[1][26] = 'Z';
    //Referente a letra B - LINHA 2
    matrix[2][1] = 'B';
    matrix[2][2] = 'C';
    matrix[2][3] = 'D';
    matrix[2][4] = 'E';
    matrix[2][5] = 'F';
    matrix[2][6] = 'G';
    matrix[2][7] = 'H';
    matrix[2][8] = 'I';
    matrix[2][9] = 'J';
    matrix[2][10] = 'K';
    matrix[2][11] = 'L';
    matrix[2][12] = 'M';
    matrix[2][13] = 'N';
    matrix[2][14] = 'O';
    matrix[2][15] = 'P';
    matrix[2][16] = 'Q';
    matrix[2][17] = 'R';
    matrix[2][18] = 'S';
    matrix[2][19] = 'T';
    matrix[2][20] = 'U';
    matrix[2][21] = 'V';
    matrix[2][22] = 'W';
    matrix[2][23] = 'X';
    matrix[2][24] = 'Y';
    matrix[2][25] = 'Z';
    matrix[2][26] = 'A';
    //Referente a letra C - LINHA 3
    matrix[3][1] = 'C';
    matrix[3][2] = 'D';
    matrix[3][3] = 'E';
    matrix[3][4] = 'F';
    matrix[3][5] = 'G';
    matrix[3][6] = 'H';
    matrix[3][7] = 'I';
    matrix[3][8] = 'J';
    matrix[3][9] = 'K';
    matrix[3][10] = 'L';
    matrix[3][11] = 'M';
    matrix[3][12] = 'N';
    matrix[3][13] = 'O';
    matrix[3][14] = 'P';
    matrix[3][15] = 'Q';
    matrix[3][16] = 'R';
    matrix[3][17] = 'S';
    matrix[3][18] = 'T';
    matrix[3][19] = 'U';
    matrix[3][20] = 'V';
    matrix[3][21] = 'W';
    matrix[3][22] = 'X';
    matrix[3][23] = 'Y';
    matrix[3][24] = 'Z';
    matrix[3][25] = 'A';
    matrix[3][26] = 'B';
    //Referente a letra D - LINHA 4
    matrix[4][1] = 'D';
    matrix[4][2] = 'E';
    matrix[4][3] = 'F';
    matrix[4][4] = 'G';
    matrix[4][5] = 'H';
    matrix[4][6] = 'I';
    matrix[4][7] = 'J';
    matrix[4][8] = 'K';
    matrix[4][9] = 'L';
    matrix[4][10] = 'M';
    matrix[4][11] = 'N';
    matrix[4][12] = 'O';
    matrix[4][13] = 'P';
    matrix[4][14] = 'Q';
    matrix[4][15] = 'R';
    matrix[4][16] = 'S';
    matrix[4][17] = 'T';
    matrix[4][18] = 'U';
    matrix[4][19] = 'V';
    matrix[4][20] = 'W';
    matrix[4][21] = 'X';
    matrix[4][22] = 'Y';
    matrix[4][23] = 'Z';
    matrix[4][24] = 'A';
    matrix[4][25] = 'B';
    matrix[4][26] = 'C';
    //Referente a letra E - LINHA 5
    matrix[5][1] = 'E';
    matrix[5][2] = 'F';
    matrix[5][3] = 'G';
    matrix[5][4] = 'H';
    matrix[5][5] = 'I';
    matrix[5][6] = 'J';
    matrix[5][7] = 'K';
    matrix[5][8] = 'L';
    matrix[5][9] = 'M';
    matrix[5][10] = 'N';
    matrix[5][11] = 'O';
    matrix[5][12] = 'P';
    matrix[5][13] = 'Q';
    matrix[5][14] = 'R';
    matrix[5][15] = 'S';
    matrix[5][16] = 'T';
    matrix[5][17] = 'U';
    matrix[5][18] = 'V';
    matrix[5][19] = 'W';
    matrix[5][20] = 'X';
    matrix[5][21] = 'Y';
    matrix[5][22] = 'Z';
    matrix[5][23] = 'A';
    matrix[5][24] = 'B';
    matrix[5][25] = 'C';
    matrix[5][26] = 'D';
    //Referente a letra F - LINHA 6
    matrix[6][1] = 'F';
    matrix[6][2] = 'G';
    matrix[6][3] = 'H';
    matrix[6][4] = 'I';
    matrix[6][5] = 'J';
    matrix[6][6] = 'K';
    matrix[6][7] = 'L';
    matrix[6][8] = 'M';
    matrix[6][9] = 'N';
    matrix[6][10] = 'O';
    matrix[6][11] = 'P';
    matrix[6][12] = 'Q';
    matrix[6][13] = 'R';
    matrix[6][14] = 'S';
    matrix[6][15] = 'T';
    matrix[6][16] = 'U';
    matrix[6][17] = 'V';
    matrix[6][18] = 'W';
    matrix[6][19] = 'X';
    matrix[6][20] = 'Y';
    matrix[6][21] = 'Z';
    matrix[6][22] = 'A';
    matrix[6][23] = 'B';
    matrix[6][24] = 'C';
    matrix[6][25] = 'D';
    matrix[6][26] = 'E';
    //Referente a letra G - LINHA 7
    matrix[7][1] = 'G';
    matrix[7][2] = 'H';
    matrix[7][3] = 'I';
    matrix[7][4] = 'J';
    matrix[7][5] = 'K';
    matrix[7][6] = 'L';
    matrix[7][7] = 'M';
    matrix[7][8] = 'N';
    matrix[7][9] = 'O';
    matrix[7][10] = 'P';
    matrix[7][11] = 'Q';
    matrix[7][12] = 'R';
    matrix[7][13] = 'S';
    matrix[7][14] = 'T';
    matrix[7][15] = 'U';
    matrix[7][16] = 'V';
    matrix[7][17] = 'W';
    matrix[7][18] = 'X';
    matrix[7][19] = 'Y';
    matrix[7][20] = 'Z';
    matrix[7][21] = 'A';
    matrix[7][22] = 'B';
    matrix[7][23] = 'C';
    matrix[7][24] = 'D';
    matrix[7][25] = 'E';
    matrix[7][26] = 'F';
    //Referente a letra H - LINHA 8
    matrix[8][1] = 'H';
    matrix[8][2] = 'I';
    matrix[8][3] = 'J';
    matrix[8][4] = 'K';
    matrix[8][5] = 'L';
    matrix[8][6] = 'M';
    matrix[8][7] = 'N';
    matrix[8][8] = 'O';
    matrix[8][9] = 'P';
    matrix[8][10] = 'Q';
    matrix[8][11] = 'R';
    matrix[8][12] = 'S';
    matrix[8][13] = 'T';
    matrix[8][14] = 'U';
    matrix[8][15] = 'V';
    matrix[8][16] = 'W';
    matrix[8][17] = 'X';
    matrix[8][18] = 'Y';
    matrix[8][19] = 'Z';
    matrix[8][20] = 'A';
    matrix[8][21] = 'B';
    matrix[8][22] = 'C';
    matrix[8][23] = 'D';
    matrix[8][24] = 'E';
    matrix[8][25] = 'F';
    matrix[8][26] = 'G';
    //Referente a letra I - LINHA 9
    matrix[9][1] = 'I';
    matrix[9][2] = 'J';
    matrix[9][3] = 'K';
    matrix[9][4] = 'L';
    matrix[9][5] = 'M';
    matrix[9][6] = 'N';
    matrix[9][7] = 'O';
    matrix[9][8] = 'P';
    matrix[9][9] = 'Q';
    matrix[9][10] = 'R';
    matrix[9][11] = 'S';
    matrix[9][12] = 'T';
    matrix[9][13] = 'U';
    matrix[9][14] = 'V';
    matrix[9][15] = 'W';
    matrix[9][16] = 'X';
    matrix[9][17] = 'Y';
    matrix[9][18] = 'Z';
    matrix[9][19] = 'A';
    matrix[9][20] = 'B';
    matrix[9][21] = 'C';
    matrix[9][22] = 'D';
    matrix[9][23] = 'E';
    matrix[9][24] = 'F';
    matrix[9][25] = 'G';
    matrix[9][26] = 'H';
    //Referente a letra J - LINHA 10
    matrix[10][1] = 'J';
    matrix[10][2] = 'K';
    matrix[10][3] = 'L';
    matrix[10][4] = 'M';
    matrix[10][5] = 'N';
    matrix[10][6] = 'O';
    matrix[10][7] = 'P';
    matrix[10][8] = 'Q';
    matrix[10][9] = 'R';
    matrix[10][10] = 'S';
    matrix[10][11] = 'T';
    matrix[10][12] = 'U';
    matrix[10][13] = 'V';
    matrix[10][14] = 'W';
    matrix[10][15] = 'X';
    matrix[10][16] = 'Y';
    matrix[10][17] = 'Z';
    matrix[10][18] = 'A';
    matrix[10][19] = 'B';
    matrix[10][20] = 'C';
    matrix[10][21] = 'D';
    matrix[10][22] = 'E';
    matrix[10][23] = 'F';
    matrix[10][24] = 'G';
    matrix[10][25] = 'H';
    matrix[10][26] = 'I';
    //Referente a letra K - LINHA 11
    matrix[11][1] = 'K';
    matrix[11][2] = 'L';
    matrix[11][3] = 'M';
    matrix[11][4] = 'N';
    matrix[11][5] = 'O';
    matrix[11][6] = 'P';
    matrix[11][7] = 'Q';
    matrix[11][8] = 'R';
    matrix[11][9] = 'S';
    matrix[11][10] = 'T';
    matrix[11][11] = 'U';
    matrix[11][12] = 'V';
    matrix[11][13] = 'W';
    matrix[11][14] = 'X';
    matrix[11][15] = 'Y';
    matrix[11][16] = 'Z';
    matrix[11][17] = 'A';
    matrix[11][18] = 'B';
    matrix[11][19] = 'C';
    matrix[11][20] = 'D';
    matrix[11][21] = 'E';
    matrix[11][22] = 'F';
    matrix[11][23] = 'G';
    matrix[11][24] = 'H';
    matrix[11][25] = 'I';
    matrix[11][26] = 'J';
    //Referente a letra L - LINHA 12
    matrix[12][1] = 'L';
    matrix[12][2] = 'M';
    matrix[12][3] = 'N';
    matrix[12][4] = 'O';
    matrix[12][5] = 'P';
    matrix[12][6] = 'Q';
    matrix[12][7] = 'R';
    matrix[12][8] = 'S';
    matrix[12][9] = 'T';
    matrix[12][10] = 'U';
    matrix[12][11] = 'V';
    matrix[12][12] = 'W';
    matrix[12][13] = 'X';
    matrix[12][14] = 'Y';
    matrix[12][15] = 'Z';
    matrix[12][16] = 'A';
    matrix[12][17] = 'B';
    matrix[12][18] = 'C';
    matrix[12][19] = 'D';
    matrix[12][20] = 'E';
    matrix[12][21] = 'F';
    matrix[12][22] = 'G';
    matrix[12][23] = 'H';
    matrix[12][24] = 'I';
    matrix[12][25] = 'J';
    matrix[12][26] = 'K';
    //Referente a letra M - LINHA 13
    matrix[13][1] = 'M';
    matrix[13][2] = 'N';
    matrix[13][3] = 'O';
    matrix[13][4] = 'P';
    matrix[13][5] = 'Q';
    matrix[13][6] = 'R';
    matrix[13][7] = 'S';
    matrix[13][8] = 'T';
    matrix[13][9] = 'U';
    matrix[13][10] = 'V';
    matrix[13][11] = 'W';
    matrix[13][12] = 'X';
    matrix[13][13] = 'Y';
    matrix[13][14] = 'Z';
    matrix[13][15] = 'A';
    matrix[13][16] = 'B';
    matrix[13][17] = 'C';
    matrix[13][18] = 'D';
    matrix[13][19] = 'E';
    matrix[13][20] = 'F';
    matrix[13][21] = 'G';
    matrix[13][22] = 'H';
    matrix[13][23] = 'I';
    matrix[13][24] = 'J';
    matrix[13][25] = 'K';
    matrix[13][26] = 'L';
    //Referente a letra N - LINHA 14
    matrix[14][1] = 'N';
    matrix[14][2] = 'O';
    matrix[14][3] = 'P';
    matrix[14][4] = 'Q';
    matrix[14][5] = 'R';
    matrix[14][6] = 'S';
    matrix[14][7] = 'T';
    matrix[14][8] = 'U';
    matrix[14][9] = 'V';
    matrix[14][10] = 'W';
    matrix[14][11] = 'X';
    matrix[14][12] = 'Y';
    matrix[14][13] = 'Z';
    matrix[14][14] = 'A';
    matrix[14][15] = 'B';
    matrix[14][16] = 'C';
    matrix[14][17] = 'D';
    matrix[14][18] = 'E';
    matrix[14][19] = 'F';
    matrix[14][20] = 'G';
    matrix[14][21] = 'H';
    matrix[14][22] = 'I';
    matrix[14][23] = 'J';
    matrix[14][24] = 'K';
    matrix[14][25] = 'L';
    matrix[14][26] = 'M';
    //Referente a letra O - LINHA 15
    matrix[15][1] = 'O';
    matrix[15][2] = 'P';
    matrix[15][3] = 'Q';
    matrix[15][4] = 'R';
    matrix[15][5] = 'S';
    matrix[15][6] = 'T';
    matrix[15][7] = 'U';
    matrix[15][8] = 'V';
    matrix[15][9] = 'W';
    matrix[15][10] = 'X';
    matrix[15][11] = 'Y';
    matrix[15][12] = 'Z';
    matrix[15][13] = 'A';
    matrix[15][14] = 'B';
    matrix[15][15] = 'C';
    matrix[15][16] = 'D';
    matrix[15][17] = 'E';
    matrix[15][18] = 'F';
    matrix[15][19] = 'G';
    matrix[15][20] = 'H';
    matrix[15][21] = 'I';
    matrix[15][22] = 'J';
    matrix[15][23] = 'K';
    matrix[15][24] = 'L';
    matrix[15][25] = 'M';
    matrix[15][26] = 'N';
    //Referente a letra P - LINHA 16
    matrix[16][1] = 'P';
    matrix[16][2] = 'Q';
    matrix[16][3] = 'R';
    matrix[16][4] = 'S';
    matrix[16][5] = 'T';
    matrix[16][6] = 'U';
    matrix[16][7] = 'V';
    matrix[16][8] = 'W';
    matrix[16][9] = 'X';
    matrix[16][10] = 'Y';
    matrix[16][11] = 'Z';
    matrix[16][12] = 'A';
    matrix[16][13] = 'B';
    matrix[16][14] = 'C';
    matrix[16][15] = 'D';
    matrix[16][16] = 'E';
    matrix[16][17] = 'F';
    matrix[16][18] = 'G';
    matrix[16][19] = 'H';
    matrix[16][20] = 'I';
    matrix[16][21] = 'J';
    matrix[16][22] = 'K';
    matrix[16][23] = 'L';
    matrix[16][24] = 'M';
    matrix[16][25] = 'N';
    matrix[16][26] = 'O';
    //Referente a letra Q - LINHA 17
    matrix[17][1] = 'Q';
    matrix[17][2] = 'R';
    matrix[17][3] = 'S';
    matrix[17][4] = 'T';
    matrix[17][5] = 'U';
    matrix[17][6] = 'V';
    matrix[17][7] = 'W';
    matrix[17][8] = 'X';
    matrix[17][9] = 'Y';
    matrix[17][10] = 'Z';
    matrix[17][11] = 'A';
    matrix[17][12] = 'B';
    matrix[17][13] = 'C';
    matrix[17][14] = 'D';
    matrix[17][15] = 'E';
    matrix[17][16] = 'F';
    matrix[17][17] = 'G';
    matrix[17][18] = 'H';
    matrix[17][19] = 'I';
    matrix[17][20] = 'J';
    matrix[17][21] = 'K';
    matrix[17][22] = 'L';
    matrix[17][23] = 'M';
    matrix[17][24] = 'N';
    matrix[17][25] = 'O';
    matrix[17][26] = 'P';
    //Referente a letra R - LINHA 18
    matrix[18][1] = 'R';
    matrix[18][2] = 'S';
    matrix[18][3] = 'T';
    matrix[18][4] = 'U';
    matrix[18][5] = 'V';
    matrix[18][6] = 'W';
    matrix[18][7] = 'X';
    matrix[18][8] = 'Y';
    matrix[18][9] = 'Z';
    matrix[18][10] = 'A';
    matrix[18][11] = 'B';
    matrix[18][12] = 'C';
    matrix[18][13] = 'D';
    matrix[18][14] = 'E';
    matrix[18][15] = 'F';
    matrix[18][16] = 'G';
    matrix[18][17] = 'H';
    matrix[18][18] = 'I';
    matrix[18][19] = 'J';
    matrix[18][20] = 'K';
    matrix[18][21] = 'L';
    matrix[18][22] = 'M';
    matrix[18][23] = 'N';
    matrix[18][24] = 'O';
    matrix[18][25] = 'P';
    matrix[18][26] = 'Q';
    //Referente a letra S - LINHA 19
    matrix[19][1] = 'S';
    matrix[19][2] = 'T';
    matrix[19][3] = 'U';
    matrix[19][4] = 'V';
    matrix[19][5] = 'W';
    matrix[19][6] = 'X';
    matrix[19][7] = 'Y';
    matrix[19][8] = 'Z';
    matrix[19][9] = 'A';
    matrix[19][10] = 'B';
    matrix[19][11] = 'C';
    matrix[19][12] = 'D';
    matrix[19][13] = 'E';
    matrix[19][14] = 'F';
    matrix[19][15] = 'G';
    matrix[19][16] = 'H';
    matrix[19][17] = 'I';
    matrix[19][18] = 'J';
    matrix[19][19] = 'K';
    matrix[19][20] = 'L';
    matrix[19][21] = 'M';
    matrix[19][22] = 'N';
    matrix[19][23] = 'O';
    matrix[19][24] = 'P';
    matrix[19][25] = 'Q';
    matrix[19][26] = 'R';
    //Referente a letra T - LINHA 20
    matrix[20][1] = 'T';
    matrix[20][2] = 'U';
    matrix[20][3] = 'V';
    matrix[20][4] = 'W';
    matrix[20][5] = 'X';
    matrix[20][6] = 'Y';
    matrix[20][7] = 'Z';
    matrix[20][8] = 'A';
    matrix[20][9] = 'B';
    matrix[20][10] = 'C';
    matrix[20][11] = 'D';
    matrix[20][12] = 'E';
    matrix[20][13] = 'F';
    matrix[20][14] = 'G';
    matrix[20][15] = 'H';
    matrix[20][16] = 'I';
    matrix[20][17] = 'J';
    matrix[20][18] = 'K';
    matrix[20][19] = 'L';
    matrix[20][20] = 'M';
    matrix[20][21] = 'N';
    matrix[20][22] = 'O';
    matrix[20][23] = 'P';
    matrix[20][24] = 'Q';
    matrix[20][25] = 'R';
    matrix[20][26] = 'S';
    //Referente a letra U - LINHA 21
    matrix[21][1] = 'U';
    matrix[21][2] = 'V';
    matrix[21][3] = 'W';
    matrix[21][4] = 'X';
    matrix[21][5] = 'Y';
    matrix[21][6] = 'Z';
    matrix[21][7] = 'A';
    matrix[21][8] = 'B';
    matrix[21][9] = 'C';
    matrix[21][10] = 'D';
    matrix[21][11] = 'E';
    matrix[21][12] = 'F';
    matrix[21][13] = 'G';
    matrix[21][14] = 'H';
    matrix[21][15] = 'I';
    matrix[21][16] = 'J';
    matrix[21][17] = 'K';
    matrix[21][18] = 'L';
    matrix[21][19] = 'M';
    matrix[21][20] = 'N';
    matrix[21][21] = 'O';
    matrix[21][22] = 'P';
    matrix[21][23] = 'Q';
    matrix[21][24] = 'R';
    matrix[21][25] = 'S';
    matrix[21][26] = 'T';
    //Referente a letra V - LINHA 22
    matrix[22][1] = 'V';
    matrix[22][2] = 'W';
    matrix[22][3] = 'X';
    matrix[22][4] = 'Y';
    matrix[22][5] = 'Z';
    matrix[22][6] = 'A';
    matrix[22][7] = 'B';
    matrix[22][8] = 'C';
    matrix[22][9] = 'D';
    matrix[22][10] = 'E';
    matrix[22][11] = 'F';
    matrix[22][12] = 'G';
    matrix[22][13] = 'H';
    matrix[22][14] = 'I';
    matrix[22][15] = 'J';
    matrix[22][16] = 'K';
    matrix[22][17] = 'L';
    matrix[22][18] = 'M';
    matrix[22][19] = 'N';
    matrix[22][20] = 'O';
    matrix[22][21] = 'P';
    matrix[22][22] = 'Q';
    matrix[22][23] = 'R';
    matrix[22][24] = 'S';
    matrix[22][25] = 'T';
    matrix[22][26] = 'U';
    //Referente a letra W - LINHA 23
    matrix[23][1] = 'W';
    matrix[23][2] = 'X';
    matrix[23][3] = 'Y';
    matrix[23][4] = 'Z';
    matrix[23][5] = 'A';
    matrix[23][6] = 'B';
    matrix[23][7] = 'C';
    matrix[23][8] = 'D';
    matrix[23][9] = 'E';
    matrix[23][10] = 'F';
    matrix[23][11] = 'G';
    matrix[23][12] = 'H';
    matrix[23][13] = 'I';
    matrix[23][14] = 'J';
    matrix[23][15] = 'K';
    matrix[23][16] = 'L';
    matrix[23][17] = 'M';
    matrix[23][18] = 'N';
    matrix[23][19] = 'O';
    matrix[23][20] = 'P';
    matrix[23][21] = 'Q';
    matrix[23][22] = 'R';
    matrix[23][23] = 'S';
    matrix[23][24] = 'T';
    matrix[23][25] = 'U';
    matrix[23][26] = 'V';
    //Referente a letra X - LINHA 24
    matrix[24][1] = 'X';
    matrix[24][2] = 'Y';
    matrix[24][3] = 'Z';
    matrix[24][4] = 'A';
    matrix[24][5] = 'B';
    matrix[24][6] = 'C';
    matrix[24][7] = 'D';
    matrix[24][8] = 'E';
    matrix[24][9] = 'F';
    matrix[24][10] = 'G';
    matrix[24][11] = 'H';
    matrix[24][12] = 'I';
    matrix[24][13] = 'J';
    matrix[24][14] = 'K';
    matrix[24][15] = 'L';
    matrix[24][16] = 'M';
    matrix[24][17] = 'N';
    matrix[24][18] = 'O';
    matrix[24][19] = 'P';
    matrix[24][20] = 'Q';
    matrix[24][21] = 'R';
    matrix[24][22] = 'S';
    matrix[24][23] = 'T';
    matrix[24][24] = 'U';
    matrix[24][25] = 'V';
    matrix[24][26] = 'W';
    //Referente a letra Y - LINHA 25
    matrix[25][1] = 'Y';
    matrix[25][2] = 'Z';
    matrix[25][3] = 'A';
    matrix[25][4] = 'B';
    matrix[25][5] = 'C';
    matrix[25][6] = 'D';
    matrix[25][7] = 'E';
    matrix[25][8] = 'F';
    matrix[25][9] = 'G';
    matrix[25][10] = 'H';
    matrix[25][11] = 'I';
    matrix[25][12] = 'J';
    matrix[25][13] = 'K';
    matrix[25][14] = 'L';
    matrix[25][15] = 'M';
    matrix[25][16] = 'N';
    matrix[25][17] = 'O';
    matrix[25][18] = 'P';
    matrix[25][19] = 'Q';
    matrix[25][20] = 'R';
    matrix[25][21] = 'S';
    matrix[25][22] = 'T';
    matrix[25][23] = 'U';
    matrix[25][24] = 'V';
    matrix[25][25] = 'W';
    matrix[25][26] = 'X';
    //Referente a letra Z - LINHA 26
    matrix[26][1] = 'Z';
    matrix[26][2] = 'A';
    matrix[26][3] = 'B';
    matrix[26][4] = 'C';
    matrix[26][5] = 'D';
    matrix[26][6] = 'E';
    matrix[26][7] = 'F';
    matrix[26][8] = 'G';
    matrix[26][9] = 'H';
    matrix[26][10] = 'I';
    matrix[26][11] = 'J';
    matrix[26][12] = 'K';
    matrix[26][13] = 'L';
    matrix[26][14] = 'M';
    matrix[26][15] = 'N';
    matrix[26][16] = 'O';
    matrix[26][17] = 'P';
    matrix[26][18] = 'Q';
    matrix[26][19] = 'R';
    matrix[26][20] = 'S';
    matrix[26][21] = 'T';
    matrix[26][22] = 'U';
    matrix[26][23] = 'V';
    matrix[26][24] = 'W';
    matrix[26][25] = 'X';
    matrix[26][26] = 'Y';
  }

  late double? aux;
  late int? aux2;
  String? chaveAux;
  String? chave;
  String textoOriginal = '';
  String textoCopia = '';
  String chaveString = '';
  String traducao = '';

  @override
  void initState() {
    super.initState();
    getChave();
    initMatrix();
  }

  void getChave() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      chave = prefs.getString('chave');
    });
  }

  void criptografar() {
    traducao = '';

    textoCopia = textoCopia.replaceAll(' ', '');

    chaveAux =
        '$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave$chave';

    chaveAux = chaveAux!.substring(0, textoCopia.length);

    textoCopia = textoCopia.toUpperCase();

    print('Texto: $textoCopia');
    print('Chave: $chaveAux');

    for (int a = 0; a < textoCopia.length; a++) {
      for (int i = 0; i < 27; i++) {
        if (chaveAux![a] == matrix[i][0]) {
          for (int j = 0; j < 27; j++) {
            if (textoCopia[a] == matrix[i][j] && matrix[j][0] != '0') {
              print('Resultado: linha $i coluna $j: ${matrix[j][0]}');
              traducao = traducao + matrix[j][0];
            }
          }
        }
      }
    }
    //Colocando espaços novamente caso tenha
    for (int i = 0; i < textoOriginal.length; i++) {
      if (textoOriginal[i] == ' ') {
        traducao = traducao.replaceRange(i, i, ' ');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundApp,
      appBar: AppBar(
        titleTextStyle: estiloInicial,
        backgroundColor: backgroundTitulo,
        title: Text('CIFRA DE VIGENERE'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 40, 15, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Chave atual: $chave',
                  style: chaveStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Insira o texto criptografado',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp("[a-zA-Z ]"),
                        allow: true),
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Texto criptografado',
                  ),
                  onChanged: (value) {
                    textoOriginal = value;
                    textoCopia = value;

                    //print(texto);
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      traducao = textoOriginal;
                      criptografar();
                    });
                  },
                  child: const Text('DESCRIPTOGRAFAR'),
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(170, 70),
                    elevation: 4,
                    primary: const Color(0xffEC6D31),
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                const Text(
                  'Texto original:',
                  style: textoTelaInicial,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '$traducao',
                  style: textoCripto,
                  textAlign: TextAlign.center,
                ),
                // Text(
                //   '\n $field',
                //   style: debugMatrix,
                //   textAlign: TextAlign.center,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
