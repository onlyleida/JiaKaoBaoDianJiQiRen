.class public final enum Lcom/loc/s$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/s$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/s$b;

.field public static final enum b:Lcom/loc/s$b;

.field public static final enum c:Lcom/loc/s$b;

.field private static final synthetic e:[Lcom/loc/s$b;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/loc/s$b;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/loc/s$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/s$b;->a:Lcom/loc/s$b;

    new-instance v1, Lcom/loc/s$b;

    const-string v3, "NotContain"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/loc/s$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/loc/s$b;->b:Lcom/loc/s$b;

    new-instance v3, Lcom/loc/s$b;

    const-string v5, "DidContain"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/loc/s$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/loc/s$b;->c:Lcom/loc/s$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/loc/s$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/loc/s$b;->e:[Lcom/loc/s$b;

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

    iput p3, p0, Lcom/loc/s$b;->d:I

    return-void
.end method

.method public static a(I)Lcom/loc/s$b;
    .locals 2

    sget-object v0, Lcom/loc/s$b;->b:Lcom/loc/s$b;

    invoke-virtual {v0}, Lcom/loc/s$b;->a()I

    move-result v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/loc/s$b;->c:Lcom/loc/s$b;

    invoke-virtual {v0}, Lcom/loc/s$b;->a()I

    move-result v1

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    sget-object p0, Lcom/loc/s$b;->a:Lcom/loc/s$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/s$b;
    .locals 1

    const-class v0, Lcom/loc/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/s$b;

    return-object p0
.end method

.method public static values()[Lcom/loc/s$b;
    .locals 1

    sget-object v0, Lcom/loc/s$b;->e:[Lcom/loc/s$b;

    invoke-virtual {v0}, [Lcom/loc/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/s$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/s$b;->d:I

    return v0
.end method
