.class Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;
.super Ljava/lang/Object;
.source "AdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateCacheSizeAndCacheCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;


# direct methods
.method constructor <init>(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 635
    const/4 v3, 0x0

    .line 636
    .local v3, "size":I
    const/4 v2, 0x0

    .line 637
    .local v2, "count":I
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    iget-object v4, v4, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 638
    .local v1, "cachedFiles":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 639
    array-length v5, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 640
    .local v0, "cachedFile":Ljava/io/File;
    int-to-long v6, v3

    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # invokes: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateSize(Ljava/io/File;)J
    invoke-static {v8, v0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$1700(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v3, v6

    .line 641
    add-int/lit8 v2, v2, 0x1

    .line 642
    iget-object v6, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # getter for: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;
    invoke-static {v6}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$1800(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 644
    .end local v0    # "cachedFile":Ljava/io/File;
    :cond_0
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # getter for: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v4}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$1900(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v4

    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 645
    iget-object v4, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;->this$1:Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    # getter for: Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->access$2000(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 647
    :cond_1
    return-void
.end method
