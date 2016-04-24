.class Lcom/fy/adsdk/demon/BdAdViewHelper$4;
.super Ljava/lang/Object;
.source "BdAdViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/BdAdViewHelper;->setCountdownText(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;


# direct methods
.method constructor <init>(Lcom/fy/adsdk/demon/BdAdViewHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fy/adsdk/demon/BdAdViewHelper;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$300(Lcom/fy/adsdk/demon/BdAdViewHelper;)I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAd()V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$400(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # operator-- for: Lcom/fy/adsdk/demon/BdAdViewHelper;->countDown:I
    invoke-static {v1}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$310(Lcom/fy/adsdk/demon/BdAdViewHelper;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$4;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$400(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
