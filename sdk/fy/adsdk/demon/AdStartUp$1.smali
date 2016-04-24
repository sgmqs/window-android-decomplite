.class final Lcom/fy/adsdk/demon/AdStartUp$1;
.super Landroid/os/Handler;
.source "AdStartUp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/AdStartUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 22
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 30
    :goto_0
    return-void

    .line 24
    :pswitch_0
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$000()Lcom/fy/adsdk/demon/BdAdViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->displayAD()V

    goto :goto_0

    .line 27
    :pswitch_1
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$000()Lcom/fy/adsdk/demon/BdAdViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAd()V

    goto :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
