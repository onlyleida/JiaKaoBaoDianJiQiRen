.class public final enum Lcom/loc/s$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/s$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/s$c;

.field public static final enum b:Lcom/loc/s$c;

.field public static final enum c:Lcom/loc/s$c;

.field public static final enum d:Lcom/loc/s$c;

.field public static final enum e:Lcom/loc/s$c;

.field public static final enum f:Lcom/loc/s$c;

.field public static final enum g:Lcom/loc/s$c;

.field public static final enum h:Lcom/loc/s$c;

.field public static final enum i:Lcom/loc/s$c;

.field private static final synthetic k:[Lcom/loc/s$c;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/loc/s$c;

    const-string v1, "SuccessCode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/s$c;->a:Lcom/loc/s$c;

    new-instance v1, Lcom/loc/s$c;

    const-string v3, "ShowUnknowCode"

    const/4 v4, 0x1

    const v5, 0x87a32

    invoke-direct {v1, v3, v4, v5}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/loc/s$c;->b:Lcom/loc/s$c;

    new-instance v3, Lcom/loc/s$c;

    const-string v5, "ShowNoShowCode"

    const/4 v6, 0x2

    const v7, 0x87a33

    invoke-direct {v3, v5, v6, v7}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/loc/s$c;->c:Lcom/loc/s$c;

    new-instance v5, Lcom/loc/s$c;

    const-string v7, "InfoUnknowCode"

    const/4 v8, 0x3

    const v9, 0x87a34

    invoke-direct {v5, v7, v8, v9}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/loc/s$c;->d:Lcom/loc/s$c;

    new-instance v7, Lcom/loc/s$c;

    const-string v9, "InfoNotContainCode"

    const/4 v10, 0x4

    const v11, 0x87a35

    invoke-direct {v7, v9, v10, v11}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/loc/s$c;->e:Lcom/loc/s$c;

    new-instance v9, Lcom/loc/s$c;

    const-string v11, "AgreeUnknowCode"

    const/4 v12, 0x5

    const v13, 0x87a36

    invoke-direct {v9, v11, v12, v13}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/loc/s$c;->f:Lcom/loc/s$c;

    new-instance v11, Lcom/loc/s$c;

    const-string v13, "AgreeNotAgreeCode"

    const/4 v14, 0x6

    const v15, 0x87a37

    invoke-direct {v11, v13, v14, v15}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/loc/s$c;->g:Lcom/loc/s$c;

    new-instance v13, Lcom/loc/s$c;

    const-string v15, "InvaildUserKeyCode"

    const/4 v14, 0x7

    const/16 v12, 0x2711

    invoke-direct {v13, v15, v14, v12}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/loc/s$c;->h:Lcom/loc/s$c;

    new-instance v12, Lcom/loc/s$c;

    const-string v15, "IllegalArgument"

    const/16 v14, 0x8

    const/16 v10, 0x4e21

    invoke-direct {v12, v15, v14, v10}, Lcom/loc/s$c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/loc/s$c;->i:Lcom/loc/s$c;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/loc/s$c;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    aput-object v5, v10, v8

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    aput-object v12, v10, v14

    sput-object v10, Lcom/loc/s$c;->k:[Lcom/loc/s$c;

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

    iput p3, p0, Lcom/loc/s$c;->j:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/s$c;
    .locals 1

    const-class v0, Lcom/loc/s$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/s$c;

    return-object p0
.end method

.method public static values()[Lcom/loc/s$c;
    .locals 1

    sget-object v0, Lcom/loc/s$c;->k:[Lcom/loc/s$c;

    invoke-virtual {v0}, [Lcom/loc/s$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/s$c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/s$c;->j:I

    return v0
.end method
