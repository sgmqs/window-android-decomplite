.class public final enum Lcom/baidu/mobads/AdSettings$Sex;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobads/AdSettings$Sex;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FEMALE:Lcom/baidu/mobads/AdSettings$Sex;

.field public static final enum MALE:Lcom/baidu/mobads/AdSettings$Sex;

.field private static final synthetic b:[Lcom/baidu/mobads/AdSettings$Sex;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mobads/AdSettings$Sex;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2, v2}, Lcom/baidu/mobads/AdSettings$Sex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Sex;->MALE:Lcom/baidu/mobads/AdSettings$Sex;

    new-instance v0, Lcom/baidu/mobads/AdSettings$Sex;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3, v3}, Lcom/baidu/mobads/AdSettings$Sex;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/baidu/mobads/AdSettings$Sex;->FEMALE:Lcom/baidu/mobads/AdSettings$Sex;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/baidu/mobads/AdSettings$Sex;

    sget-object v1, Lcom/baidu/mobads/AdSettings$Sex;->MALE:Lcom/baidu/mobads/AdSettings$Sex;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mobads/AdSettings$Sex;->FEMALE:Lcom/baidu/mobads/AdSettings$Sex;

    aput-object v1, v0, v3

    sput-object v0, Lcom/baidu/mobads/AdSettings$Sex;->b:[Lcom/baidu/mobads/AdSettings$Sex;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/baidu/mobads/AdSettings$Sex;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobads/AdSettings$Sex;
    .locals 1

    const-class v0, Lcom/baidu/mobads/AdSettings$Sex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobads/AdSettings$Sex;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobads/AdSettings$Sex;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/AdSettings$Sex;->b:[Lcom/baidu/mobads/AdSettings$Sex;

    invoke-virtual {v0}, [Lcom/baidu/mobads/AdSettings$Sex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobads/AdSettings$Sex;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/baidu/mobads/AdSettings$Sex;->a:I

    return v0
.end method
