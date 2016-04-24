.class Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;
.super Ljava/lang/Object;
.source "BdAdDisplayTactics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/BdAdDisplayTactics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Tactics_2"
.end annotation


# static fields
.field public static final CACHE_ALIVE_TIME:I = 0x384

.field private static adCache:Lcom/fy/adsdk/demon/AdCache;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tactics1(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x384

    .line 56
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    if-nez v2, :cond_0

    .line 57
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->getAdCache(Landroid/content/Context;)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v2

    sput-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    .line 59
    :cond_0
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "packageName":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    invoke-virtual {v2, v1}, Lcom/fy/adsdk/demon/AdCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 62
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    const/16 v3, 0x384

    invoke-virtual {v2, v1, v1, v3}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_1
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    invoke-virtual {v2, v1, v1, v4}, Lcom/fy/adsdk/demon/AdCache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static tactics2(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    if-nez v2, :cond_0

    .line 71
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->getAdCache(Landroid/content/Context;)Lcom/fy/adsdk/demon/AdCache;

    move-result-object v2

    sput-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    .line 73
    :cond_0
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x1

    .line 76
    .local v0, "cflag":Z
    :try_start_0
    sget-object v2, Lcom/fy/adsdk/demon/BdAdDisplayTactics$Tactics_2;->adCache:Lcom/fy/adsdk/demon/AdCache;

    invoke-virtual {v2, v1}, Lcom/fy/adsdk/demon/AdCache;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    goto :goto_0
.end method
