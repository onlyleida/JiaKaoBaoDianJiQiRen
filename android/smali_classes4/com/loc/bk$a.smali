.class public final enum Lcom/loc/bk$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/bk$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/bk$a;

.field public static final enum b:Lcom/loc/bk$a;

.field public static final enum c:Lcom/loc/bk$a;

.field public static final enum d:Lcom/loc/bk$a;

.field public static final enum e:Lcom/loc/bk$a;

.field private static final synthetic g:[Lcom/loc/bk$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/loc/bk$a;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/bk$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/bk$a;->a:Lcom/loc/bk$a;

    new-instance v1, Lcom/loc/bk$a;

    const-string v3, "INTERRUPT_IO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/loc/bk$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/loc/bk$a;->b:Lcom/loc/bk$a;

    new-instance v3, Lcom/loc/bk$a;

    const-string v5, "NEVER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/loc/bk$a;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/loc/bk$a;->c:Lcom/loc/bk$a;

    new-instance v5, Lcom/loc/bk$a;

    const-string v7, "FIX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/loc/bk$a;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/loc/bk$a;->d:Lcom/loc/bk$a;

    new-instance v7, Lcom/loc/bk$a;

    const-string v9, "SINGLE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/loc/bk$a;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/loc/bk$a;->e:Lcom/loc/bk$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/loc/bk$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/loc/bk$a;->g:[Lcom/loc/bk$a;

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

    iput p3, p0, Lcom/loc/bk$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/bk$a;
    .locals 1

    const-class v0, Lcom/loc/bk$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/bk$a;

    return-object p0
.end method

.method public static values()[Lcom/loc/bk$a;
    .locals 1

    sget-object v0, Lcom/loc/bk$a;->g:[Lcom/loc/bk$a;

    invoke-virtual {v0}, [Lcom/loc/bk$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/bk$a;

    return-object v0
.end method
