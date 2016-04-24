.class public final enum Lcom/baidu/mobads/Ad$MaterialType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaterialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/Ad$MaterialType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GIF:Lcom/baidu/mobads/Ad$MaterialType;

.field public static final enum HTML:Lcom/baidu/mobads/Ad$MaterialType;

.field public static final enum NONE:Lcom/baidu/mobads/Ad$MaterialType;

.field public static final enum STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

.field public static final enum TEXT:Lcom/baidu/mobads/Ad$MaterialType;

.field private static final synthetic a:[Lcom/baidu/mobads/Ad$MaterialType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobads/Ad$MaterialType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobads/Ad$MaterialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->NONE:Lcom/baidu/mobads/Ad$MaterialType;

    new-instance v0, Lcom/baidu/mobads/Ad$MaterialType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mobads/Ad$MaterialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->TEXT:Lcom/baidu/mobads/Ad$MaterialType;

    new-instance v0, Lcom/baidu/mobads/Ad$MaterialType;

    const-string v1, "STATIC_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mobads/Ad$MaterialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

    new-instance v0, Lcom/baidu/mobads/Ad$MaterialType;

    const-string v1, "GIF"

    invoke-direct {v0, v1, v5}, Lcom/baidu/mobads/Ad$MaterialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->GIF:Lcom/baidu/mobads/Ad$MaterialType;

    new-instance v0, Lcom/baidu/mobads/Ad$MaterialType;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v6}, Lcom/baidu/mobads/Ad$MaterialType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->HTML:Lcom/baidu/mobads/Ad$MaterialType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/mobads/Ad$MaterialType;

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->NONE:Lcom/baidu/mobads/Ad$MaterialType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->TEXT:Lcom/baidu/mobads/Ad$MaterialType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->STATIC_IMAGE:Lcom/baidu/mobads/Ad$MaterialType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->GIF:Lcom/baidu/mobads/Ad$MaterialType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/mobads/Ad$MaterialType;->HTML:Lcom/baidu/mobads/Ad$MaterialType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/mobads/Ad$MaterialType;->a:[Lcom/baidu/mobads/Ad$MaterialType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/Ad$MaterialType;
    .locals 1

    const-class v0, Lcom/baidu/mobads/Ad$MaterialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/Ad$MaterialType;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/Ad$MaterialType;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/Ad$MaterialType;->a:[Lcom/baidu/mobads/Ad$MaterialType;

    invoke-virtual {v0}, [Lcom/baidu/mobads/Ad$MaterialType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/Ad$MaterialType;

    return-object v0
.end method
