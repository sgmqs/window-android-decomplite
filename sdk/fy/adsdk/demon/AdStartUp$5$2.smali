.class Lcom/fy/adsdk/demon/AdStartUp$5$2;
.super Ljava/lang/Object;
.source "AdStartUp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/AdStartUp$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fy/adsdk/demon/AdStartUp$5;


# direct methods
.method constructor <init>(Lcom/fy/adsdk/demon/AdStartUp$5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fy/adsdk/demon/AdStartUp$5;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/fy/adsdk/demon/AdStartUp$5$2;->this$0:Lcom/fy/adsdk/demon/AdStartUp$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 110
    # getter for: Lcom/fy/adsdk/demon/AdStartUp;->handler:Landroid/os/Handler;
    invoke-static {}, Lcom/fy/adsdk/demon/AdStartUp;->access$100()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    return-void
.end method
