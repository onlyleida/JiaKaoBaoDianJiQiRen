.class final Lcom/loc/cs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/cs;->b(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/loc/dx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/cs;


# direct methods
.method constructor <init>(Lcom/loc/cs;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/cs$1;->a:Lcom/loc/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/loc/dx;Lcom/loc/dx;)I
    .locals 0

    iget p1, p1, Lcom/loc/dx;->c:I

    iget p0, p0, Lcom/loc/dx;->c:I

    sub-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/loc/dx;

    check-cast p2, Lcom/loc/dx;

    invoke-static {p1, p2}, Lcom/loc/cs$1;->a(Lcom/loc/dx;Lcom/loc/dx;)I

    move-result p1

    return p1
.end method
