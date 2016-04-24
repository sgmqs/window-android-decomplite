.class Lcom/fy/adsdk/demon/BdAdViewHelper$3;
.super Landroid/os/Handler;
.source "BdAdViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/BdAdViewHelper;
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
    .line 174
    iput-object p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$3;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$3;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$100(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$3;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$100(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method
