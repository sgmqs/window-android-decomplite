.class Lcom/fy/adsdk/demon/AdConfig;
.super Ljava/lang/Object;
.source "BdAdViewHelper.java"


# instance fields
.field public aPPID:Ljava/lang/String;

.field public adPlaceId:Ljava/lang/String;

.field public adPosition:Lcom/fy/adsdk/demon/ADPosition;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "a5d5824d"

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdConfig;->aPPID:Ljava/lang/String;

    .line 44
    const-string v0, "2430721"

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdConfig;->adPlaceId:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/fy/adsdk/demon/ADPosition;->Bottom:Lcom/fy/adsdk/demon/ADPosition;

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdConfig;->adPosition:Lcom/fy/adsdk/demon/ADPosition;

    return-void
.end method
