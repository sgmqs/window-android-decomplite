.class final Lcom/fy/adsdk/demon/AdStartUp$5;
.super Ljava/lang/Object;
.source "AdStartUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/AdStartUp;->executeTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 102
    :goto_0
    :try_start_0
    sget-object v0, Lcom/fy/adsdk/demon/AdStartUp;->_context:Landroid/content/Context;

    new-instance v1, Lcom/fy/adsdk/demon/AdStartUp$5$1;

    invoke-direct {v1, p0}, Lcom/fy/adsdk/demon/AdStartUp$5$1;-><init>(Lcom/fy/adsdk/demon/AdStartUp$5;)V

    new-instance v2, Lcom/fy/adsdk/demon/AdStartUp$5$2;

    invoke-direct {v2, p0}, Lcom/fy/adsdk/demon/AdStartUp$5$2;-><init>(Lcom/fy/adsdk/demon/AdStartUp$5;)V

    invoke-static {v0, v1, v2}, Lcom/fy/adsdk/demon/BdAdDisplayTactics;->executeTactics(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 113
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->adThread:Ljava/lang/Thread;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$200()Ljava/lang/Thread;

    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method
