.class Lcom/fy/adsdk/demon/AdCache$Utils;
.super Ljava/lang/Object;
.source "AdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fy/adsdk/demon/AdCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Utils"
.end annotation


# static fields
.field private static final mSeparator:C = ' '


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 853
    if-nez p0, :cond_0

    .line 854
    const/4 v1, 0x0

    .line 858
    :goto_0
    return-object v1

    .line 856
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 857
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 858
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method private static Bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 865
    array-length v0, p0

    if-nez v0, :cond_0

    .line 866
    const/4 v0, 0x0

    .line 868
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$1000([B)[B
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->clearDateInfo([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200([B)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->Bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-static {p0, p1}, Lcom/fy/adsdk/demon/AdCache$Utils;->newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->isDue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->clearDateInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(I[B)[B
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # [B

    .prologue
    .line 748
    invoke-static {p0, p1}, Lcom/fy/adsdk/demon/AdCache$Utils;->newByteArrayWithDateInfo(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900([B)Z
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 748
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static bitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 898
    if-nez p0, :cond_0

    .line 899
    const/4 v1, 0x0

    .line 903
    :goto_0
    return-object v1

    .line 901
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 902
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 903
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static clearDateInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 795
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 798
    :cond_0
    return-object p0
.end method

.method private static clearDateInfo([B)[B
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 802
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->hasDateInfo([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->indexOf([BC)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fy/adsdk/demon/AdCache$Utils;->copyOfRange([BII)[B

    move-result-object p0

    .line 805
    .end local p0    # "data":[B
    :cond_0
    return-object p0
.end method

.method private static copyOfRange([BII)[B
    .locals 5
    .param p0, "original"    # [B
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 831
    sub-int v1, p2, p1

    .line 832
    .local v1, "newLength":I
    if-gez v1, :cond_0

    .line 833
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 834
    :cond_0
    new-array v0, v1, [B

    .line 835
    .local v0, "copy":[B
    const/4 v2, 0x0

    array-length v3, p0

    sub-int/2addr v3, p1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p0, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 836
    return-object v0
.end method

.method private static createDateInfo(I)Ljava/lang/String;
    .locals 4
    .param p0, "second"    # I

    .prologue
    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "currentTime":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 846
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 875
    if-nez p0, :cond_0

    .line 876
    const/4 v0, 0x0

    .line 890
    :goto_0
    return-object v0

    .line 879
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 880
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 882
    .local v3, "h":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 884
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_1
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 886
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 887
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 889
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 882
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method private static getDateInfoFromDate([B)[Ljava/lang/String;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 813
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->hasDateInfo([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xd

    invoke-static {p0, v4, v2}, Lcom/fy/adsdk/demon/AdCache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 815
    .local v1, "saveDate":Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const/16 v2, 0xe

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lcom/fy/adsdk/demon/AdCache$Utils;->indexOf([BC)I

    move-result v3

    invoke-static {p0, v2, v3}, Lcom/fy/adsdk/demon/AdCache$Utils;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 816
    .local v0, "deleteAfter":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 818
    .end local v0    # "deleteAfter":Ljava/lang/String;
    .end local v1    # "saveDate":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasDateInfo([B)Z
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 809
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0xd

    aget-byte v0, p0, v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/16 v0, 0x20

    invoke-static {p0, v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->indexOf([BC)I

    move-result v0

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static indexOf([BC)I
    .locals 2
    .param p0, "data"    # [B
    .param p1, "c"    # C

    .prologue
    .line 822
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 823
    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 827
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 822
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 827
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private static isDue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 757
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/fy/adsdk/demon/AdCache$Utils;->isDue([B)Z

    move-result v0

    return v0
.end method

.method private static isDue([B)Z
    .locals 12
    .param p0, "data"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 767
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->getDateInfoFromDate([B)[Ljava/lang/String;

    move-result-object v5

    .line 768
    .local v5, "strs":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v8, v5

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 769
    aget-object v4, v5, v7

    .line 770
    .local v4, "saveTimeStr":Ljava/lang/String;
    :goto_0
    const-string v8, "0"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 771
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 773
    :cond_0
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 774
    .local v2, "saveTime":J
    aget-object v8, v5, v6

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 775
    .local v0, "deleteAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v0

    add-long/2addr v10, v2

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 779
    .end local v0    # "deleteAfter":J
    .end local v2    # "saveTime":J
    .end local v4    # "saveTimeStr":Ljava/lang/String;
    :goto_1
    return v6

    :cond_1
    move v6, v7

    goto :goto_1
.end method

.method private static newByteArrayWithDateInfo(I[B)[B
    .locals 5
    .param p0, "second"    # I
    .param p1, "data2"    # [B

    .prologue
    const/4 v4, 0x0

    .line 787
    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 788
    .local v0, "data1":[B
    array-length v2, v0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 789
    .local v1, "retdata":[B
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 790
    array-length v2, v0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 791
    return-object v1
.end method

.method private static newStringWithDateInfo(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "second"    # I
    .param p1, "strInfo"    # Ljava/lang/String;

    .prologue
    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/fy/adsdk/demon/AdCache$Utils;->createDateInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
