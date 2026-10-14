.class public final enum Lcom/loc/bk$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/loc/bk$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/loc/bk$b;

.field public static final enum b:Lcom/loc/bk$b;

.field public static final enum c:Lcom/loc/bk$b;

.field public static final enum d:Lcom/loc/bk$b;

.field public static final enum e:Lcom/loc/bk$b;

.field public static final enum f:Lcom/loc/bk$b;

.field public static final enum g:Lcom/loc/bk$b;

.field private static final synthetic i:[Lcom/loc/bk$b;


# instance fields
.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/loc/bk$b;

    const-string v1, "FIRST_NONDEGRADE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/loc/bk$b;->a:Lcom/loc/bk$b;

    new-instance v1, Lcom/loc/bk$b;

    const-string v3, "NEVER_GRADE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/loc/bk$b;->b:Lcom/loc/bk$b;

    new-instance v3, Lcom/loc/bk$b;

    const-string v5, "DEGRADE_BYERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/loc/bk$b;->c:Lcom/loc/bk$b;

    new-instance v5, Lcom/loc/bk$b;

    const-string v7, "DEGRADE_ONLY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/loc/bk$b;->d:Lcom/loc/bk$b;

    new-instance v7, Lcom/loc/bk$b;

    const-string v9, "FIX_NONDEGRADE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/loc/bk$b;->e:Lcom/loc/bk$b;

    new-instance v9, Lcom/loc/bk$b;

    const-string v11, "FIX_DEGRADE_BYERROR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/loc/bk$b;->f:Lcom/loc/bk$b;

    new-instance v11, Lcom/loc/bk$b;

    const-string v13, "FIX_DEGRADE_ONLY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/loc/bk$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/loc/bk$b;->g:Lcom/loc/bk$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/loc/bk$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/loc/bk$b;->i:[Lcom/loc/bk$b;

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

    iput p3, p0, Lcom/loc/bk$b;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/loc/bk$b;
    .locals 1

    const-class v0, Lcom/loc/bk$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/loc/bk$b;

    return-object p0
.end method

.method public static values()[Lcom/loc/bk$b;
    .locals 1

    sget-object v0, Lcom/loc/bk$b;->i:[Lcom/loc/bk$b;

    invoke-virtual {v0}, [Lcom/loc/bk$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/loc/bk$b;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/loc/bk$b;->h:I

    return v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/loc/bk$b;->h:I

    sget-object v1, Lcom/loc/bk$b;->a:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->b:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->e:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 2

    iget v0, p0, Lcom/loc/bk$b;->h:I

    sget-object v1, Lcom/loc/bk$b;->c:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->d:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->f:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->g:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 2

    iget v0, p0, Lcom/loc/bk$b;->h:I

    sget-object v1, Lcom/loc/bk$b;->c:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/loc/bk$b;->f:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 2

    iget v0, p0, Lcom/loc/bk$b;->h:I

    sget-object v1, Lcom/loc/bk$b;->b:Lcom/loc/bk$b;

    iget v1, v1, Lcom/loc/bk$b;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
