#include <stdio.h>

int main() {
    int i, n, sum, wt, tat, twt = 0, ttat = 0;
    int t[10];

    float awt, atat;

    printf("Enter number of processes:\n");
    scanf("%d", &n);

    for (i = 0; i < n; i++) {
        printf("Enter the Burst Time of process %d: ", i + 1);
        scanf("%d", &t[i]);
    }

    printf("\n\n FIRST COME FIRST SERVE SCHEDULING ALGORITHM\n");
    printf("\n Process ID\tWaiting Time\tTurn Around Time\n");

    sum = 0;
    wt = 0;
    tat = t[0];
    twt = 0;
    ttat = tat;

    printf("1\t\t%d\t\t%d\n", wt, tat);

    for (i = 1; i < n; i++) {
        sum += t[i - 1];
        wt = sum;
        tat = sum + t[i];
        twt += wt;
        ttat += tat;

        printf("%d\t\t%d\t\t%d\n", i + 1, wt, tat);
    }

    awt = (float)twt / n;
    atat = (float)ttat / n;

    printf("\nAverage Waiting Time: %.2f", awt);
    printf("\nAverage Turn Around Time: %.2f\n", atat);

    return 0;
}
