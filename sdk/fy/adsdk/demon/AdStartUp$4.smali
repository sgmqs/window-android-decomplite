.class final Lcom/fy/adsdk/demon/AdStartUp$4;
.super Ljava/lang/Object;
.source "AdStartUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/AdStartUp;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$000()Lcom/fy/adsdk/demon/BdAdViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->setAdPositionBottom()V

    .line 69
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->adViewHelper:Lcom/fy/adsdk/demon/BdAdViewHelper;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$000()Lcom/fy/adsdk/demon/BdAdViewHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fy/adsdk/demon/BdAdViewHelper;->displayAD()V

    .line 70
    return-void
.end method
