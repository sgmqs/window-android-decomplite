.class final Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1$1;
.super Ljava/lang/Object;
.source "BdAdDisplayTactics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    :cond_0
    :goto_0
    :try_start_0
    sget v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->SLEEP_TIME:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 36
    sget-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isBottom:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isTop:Z

    if-eqz v0, :cond_0

    .line 37
    sget v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->SHOW_TIME:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 38
    sget-object v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->setAdPositionBottom()V

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isBottom:Z

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isTop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    goto :goto_0
.end method
