.class public Lcom/fy/adsdk/demon/AdCache$ACacheManager;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ACacheManager"
.end annotation


# instance fields
.field private final cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected cacheDir:Ljava/io/File;

.field private final cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

.field private final countLimit:I

.field private final lastUsageDates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final sizeLimit:J

.field final synthetic this$0:Lcom/fy/adsdk/demon/AdCache;


# direct methods
.method private constructor <init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;JI)V
    .locals 1
    .param p1, "this$0"    # Lcom/fy/adsdk/demon/AdCache;
    .param p2, "cacheDir"    # Ljava/io/File;
    .param p3, "sizeLimit"    # J
    .param p5, "countLimit"    # I

    .prologue
    .line 619
    iput-object p1, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->this$0:Lcom/fy/adsdk/demon/AdCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    .line 620
    iput-object p2, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheDir:Ljava/io/File;

    .line 621
    iput-wide p3, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->sizeLimit:J

    .line 622
    iput p5, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->countLimit:I

    .line 623
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    .line 624
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 625
    invoke-direct {p0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateCacheSizeAndCacheCount()V

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;JILcom/fy/adsdk/demon/AdCache$1;)V
    .locals 1
    .param p1, "x0"    # Lcom/fy/adsdk/demon/AdCache;
    .param p2, "x1"    # Ljava/io/File;
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # Lcom/fy/adsdk/demon/AdCache$1;

    .prologue
    .line 611
    invoke-direct/range {p0 .. p5}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;-><init>(Lcom/fy/adsdk/demon/AdCache;Ljava/io/File;JI)V

    return-void
.end method

.method static synthetic access$1500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->remove(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->clear()V

    return-void
.end method

.method static synthetic access$1700(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)J
    .locals 2
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->put(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/fy/adsdk/demon/AdCache$ACacheManager;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/fy/adsdk/demon/AdCache$ACacheManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 611
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private calculateCacheSizeAndCacheCount()V
    .locals 2

    .prologue
    .line 632
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;

    invoke-direct {v1, p0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager$1;-><init>(Lcom/fy/adsdk/demon/AdCache$ACacheManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 648
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 649
    return-void
.end method

.method private calculateSize(Ljava/io/File;)J
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 739
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private clear()V
    .locals 6

    .prologue
    .line 693
    iget-object v2, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 694
    iget-object v2, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 695
    iget-object v2, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 696
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 697
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 698
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 697
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 701
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private get(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 675
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->newFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 676
    .local v1, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 677
    .local v0, "currentTime":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 678
    iget-object v2, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    return-object v1
.end method

.method private newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 684
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private put(Ljava/io/File;)V
    .locals 12
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 652
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 653
    .local v0, "curCacheCount":I
    :goto_0
    add-int/lit8 v8, v0, 0x1

    iget v9, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->countLimit:I

    if-le v8, v9, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 655
    .local v4, "freedSize":J
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 657
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 658
    goto :goto_0

    .line 659
    .end local v4    # "freedSize":J
    :cond_0
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 661
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v6

    .line 662
    .local v6, "valueSize":J
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 663
    .local v2, "curCacheSize":J
    :goto_1
    add-long v8, v2, v6

    iget-wide v10, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->sizeLimit:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 664
    invoke-direct {p0}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->removeNext()J

    move-result-wide v4

    .line 665
    .restart local v4    # "freedSize":J
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v10, v4

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v2

    .line 666
    goto :goto_1

    .line 667
    .end local v4    # "freedSize":J
    :cond_1
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->cacheSize:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 670
    .local v1, "currentTime":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p1, v8, v9}, Ljava/io/File;->setLastModified(J)Z

    .line 671
    iget-object v8, p0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v8, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    return-void
.end method

.method private remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 689
    .local v0, "image":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private removeNext()J
    .locals 16

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 710
    const-wide/16 v4, 0x0

    .line 735
    :cond_0
    :goto_0
    return-wide v4

    .line 713
    :cond_1
    const/4 v8, 0x0

    .line 714
    .local v8, "oldestUsage":Ljava/lang/Long;
    const/4 v7, 0x0

    .line 715
    .local v7, "mostLongUsedFile":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 716
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    monitor-enter v10

    .line 717
    :try_start_0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 718
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    if-nez v7, :cond_3

    .line 719
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    .line 720
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/Long;

    move-object v8, v0

    goto :goto_1

    .line 722
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 723
    .local v6, "lastValueUsage":Ljava/lang/Long;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-gez v9, :cond_2

    .line 724
    move-object v8, v6

    .line 725
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/io/File;

    move-object v7, v0

    goto :goto_1

    .line 729
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/io/File;Ljava/lang/Long;>;"
    .end local v6    # "lastValueUsage":Ljava/lang/Long;
    :cond_4
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->calculateSize(Ljava/io/File;)J

    move-result-wide v4

    .line 732
    .local v4, "fileSize":J
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 733
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/fy/adsdk/demon/AdCache$ACacheManager;->lastUsageDates:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 729
    .end local v4    # "fileSize":J
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9
.end method
