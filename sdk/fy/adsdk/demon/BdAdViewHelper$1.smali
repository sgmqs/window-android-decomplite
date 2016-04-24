.class Lcom/fy/adsdk/demon/BdAdViewHelper$1;
.super Ljava/lang/Object;
.source "BdAdViewHelper.java"

# interfaces
.implements Lcom/baidu/mobads/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/BdAdViewHelper;->configAdView()V
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
    .line 87
    iput-object p1, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->hideAd()V

    .line 105
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->_context:Landroid/content/Context;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$200(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->tactics1(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 111
    return-void
.end method

.method public onAdReady(Lcom/baidu/mobads/AdView;)V
    .locals 0
    .param p1, "adView"    # Lcom/baidu/mobads/AdView;

    .prologue
    .line 91
    return-void
.end method

.method public onAdShow(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    iget-object v0, v0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v0, v0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Bottom:Lcom/fy/adsdk/demon/ADPosition;

    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # invokes: Lcom/fy/adsdk/demon/BdAdViewHelper;->addCloseButton()V
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$000(Lcom/fy/adsdk/demon/BdAdViewHelper;)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    iget-object v0, v0, Lcom/fy/adsdk/demon/BdAdViewHelper;->_config:Lcom/fy/adsdk/demon/AdConfig;

    iget-object v0, v0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    sget-object v1, Lcom/fy/adsdk/demon/ADPosition;->Top:Lcom/fy/adsdk/demon/ADPosition;

    if-ne v0, v1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/fy/adsdk/demon/BdAdViewHelper$1;->this$0:Lcom/fy/adsdk/demon/BdAdViewHelper;

    # getter for: Lcom/fy/adsdk/demon/BdAdViewHelper;->countDownView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->access$100(Lcom/fy/adsdk/demon/BdAdViewHelper;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :cond_1
    return-void
.end method

.method public onAdSwitch()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method
