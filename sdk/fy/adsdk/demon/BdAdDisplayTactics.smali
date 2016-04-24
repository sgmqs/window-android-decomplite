.class public Lcom/fy/adsdk/demon/BdAdDisplayTactics;
.super Ljava/lang/Object;
.source "BdAdDisplayTactics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;,
        Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;
    }
.end annotation


# static fields
.field public static adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

.field public static hidden:Z

.field public static showed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static executeTactics(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "show"    # Ljava/lang/Runnable;
    .param p2, "hide"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 101
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 102
    invoke-static {p0}, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->tactics2(Landroid/content/Context;)Z

    move-result v0

    .line 103
    .local v0, "flag":Z
    if-eqz v0, :cond_0

    .line 104
    sget-boolean v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isBottom:Z

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->isForegroundApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 105
    invoke-static {p1}, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showRunTactics(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    :goto_1
    return-void

    .line 101
    .end local v0    # "flag":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 109
    .restart local v0    # "flag":Z
    :cond_2
    sget-boolean v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showed:Z

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->isForegroundApp(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 110
    invoke-static {p2}, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->hideRunTactics(Ljava/lang/Runnable;)V

    .line 111
    sput-boolean v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isBottom:Z

    goto :goto_1

    .line 115
    :cond_3
    sget-boolean v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isTop:Z

    if-nez v1, :cond_4

    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->isForegroundApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    sget-object v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-virtual {v1}, Lcom/fy/adsdk/demon/BdAdViewHelper;->setAdPositionTop()V

    .line 117
    invoke-static {p1}, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showRunTactics(Ljava/lang/Runnable;)V

    .line 118
    sget-object v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;

    sget v3, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->TOP_TIME:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/fy/adsdk/demon/BdAdViewHelper;->setCountdownText(I)V

    .line 120
    :try_start_0
    sget v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->TOP_TIME:I

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_2
    sput-boolean v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_1;->isTop:Z

    goto :goto_1

    .line 124
    :cond_4
    invoke-static {p2}, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->hideRunTactics(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 121
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static declared-synchronized hideRunTactics(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "hide"    # Ljava/lang/Runnable;

    .prologue
    .line 92
    const-class v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->hidden:Z

    if-nez v0, :cond_0

    .line 93
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showed:Z

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->hidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_0
    monitor-exit v1

    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized showRunTactics(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "show"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    const-class v1, Lcom/fy/adsdk/demon/BdAdDisplayTactics;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showed:Z

    if-nez v0, :cond_0

    .line 85
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 86
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->showed:Z

    .line 87
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->hidden:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit v1

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
