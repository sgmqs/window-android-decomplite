.class Lcom/fy/adsdk/demon/BdAdViewHelper$2;
.super Ljava/lang/Object;
.source "BdAdViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/BdAdViewHelper;->addCloseButton()V
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
    .line 143
    iput-object p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$2;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$2;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAd()V

    .line 147
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$2;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$200(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->tactics1(Landroid/content/Context;)V

    .line 148
    return-void
.end method
