#include <stdio.h> 
void print(int *arr, int m, int n) 
{ 
int i, j; 
for (i = 0; i < m; i++) {
for (j = 0; j < n; j++) {
printf("%d ", *((arr+i*n) + j)); 

}
printf("\n"); 

}

} 

void matrixTranspose(int *arr, int row, int column)
{
int copy[column][row];

for (int i = 0; i < row; i++){
for(int j = 0; j < column; j++){
copy[j][i] = *((arr+i*column) + j);
}
}

for(int i = 0; i < column; i++){
for(int j = 0; j < row; j++){
printf("%d ", copy[i][j]);
}
printf("\n");
} 
}

int main() 
{ 
int arr[][3] = {{1, 2, 3}, {4, 5, 6}}; 


int row = sizeof(arr) / sizeof(arr[0]);
int column = sizeof(arr[0])/sizeof(arr[0][0]);

print((int *)arr, row, column); 
matrixTranspose((int *)arr, row, column);
return 0; 
} 