.class public final enum Lcom/loc/bk$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/bk$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/bk$c;

.field public static final enum b:Lcom/loc/bk$c;

.field private static final synthetic d:[Lcom/loc/bk$c;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/loc/bk$c;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/bk$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/bk$c;->a:Lcom/loc/bk$c;

    new-instance v1, Lcom/loc/bk$c;

    const-string v3, "HTTPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/loc/bk$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/loc/bk$c;->b:Lcom/loc/bk$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/loc/bk$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/loc/bk$c;->d:[Lcom/loc/bk$c;

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

    iput p3, p0, Lcom/loc/bk$c;->c:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/bk$c;
    .locals 1

    const-class v0, Lcom/loc/bk$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/bk$c;

    return-object p0
.end method

.method public static values()[Lcom/loc/bk$c;
    .locals 1

    sget-object v0, Lcom/loc/bk$c;->d:[Lcom/loc/bk$c;

    invoke-virtual {v0}, [Lcom/loc/bk$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/bk$c;

    return-object v0
.end method
