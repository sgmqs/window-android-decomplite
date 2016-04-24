.class Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;
.super Ljava/lang/Object;
.source "BdAdDisplayTactics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/BdAdDisplayTactics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tactics_1"
.end annotation


# static fields
.field public static SHOW_TIME:I

.field public static SLEEP_TIME:I

.field public static TOP_TIME:I

.field public static isBottom:Z

.field public static isTop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput-boolean v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isTop:Z

    .line 22
    sput-boolean v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isBottom:Z

    .line 24
    const/16 v1, 0x3e8

    sput v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->SLEEP_TIME:I

    .line 25
    const v1, 0x927c0

    sput v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->SHOW_TIME:I

    .line 26
    const/16 v1, 0x1388

    sput v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->TOP_TIME:I

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1$1;

    invoke-direct {v1}, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 46
    .local v0, "resetDisplayThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 47
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
