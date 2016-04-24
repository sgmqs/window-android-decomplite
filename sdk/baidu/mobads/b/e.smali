.class public final Lcom/baidu/mobads/b/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/mobads/b/e;->a:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lcom/baidu/mobads/b/e;->b:[B

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/baidu/mobads/b/e;->a:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/baidu/mobads/b/e;->b:[B

    sget-object v2, Lcom/baidu/mobads/b/e;->a:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x30t
        0x4bt
        0x61t
        0x6at
        0x44t
        0x37t
        0x41t
        0x5at
        0x63t
        0x46t
        0x32t
        0x51t
        0x6et
        0x50t
        0x72t
        0x35t
        0x66t
        0x77t
        0x69t
        0x48t
        0x52t
        0x4et
        0x79t
        0x67t
        0x6dt
        0x75t
        0x70t
        0x55t
        0x54t
        0x49t
        0x58t
        0x78t
        0x36t
        0x39t
        0x42t
        0x57t
        0x62t
        0x2dt
        0x68t
        0x4dt
        0x43t
        0x47t
        0x4at
        0x6ft
        0x5ft
        0x56t
        0x38t
        0x45t
        0x73t
        0x6bt
        0x7at
        0x31t
        0x59t
        0x64t
        0x76t
        0x4ct
        0x33t
        0x34t
        0x6ct
        0x65t
        0x74t
        0x71t
        0x53t
        0x4ft
    .end array-data
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    rem-int/lit8 v1, v1, 0x3

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v1, v2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v3, v1, [B

    move v1, v0

    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_1

    sget-object v4, Lcom/baidu/mobads/b/e;->a:[B

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xfc

    shr-int/lit8 v5, v5, 0x2

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/baidu/mobads/b/e;->a:[B

    aget-byte v6, v2, v1

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x4

    add-int/lit8 v7, v1, 0x1

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/baidu/mobads/b/e;->a:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v1, 0x2

    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x6

    add-int/2addr v6, v7

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    add-int/lit8 v4, v0, 0x3

    sget-object v5, Lcom/baidu/mobads/b/e;->a:[B

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v2, v6

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
