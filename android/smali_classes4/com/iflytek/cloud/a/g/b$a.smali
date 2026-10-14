.class Lcom/iflytek/cloud/a/g/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field final synthetic c:Lcom/iflytek/cloud/a/g/b;


# direct methods
.method public constructor <init>(Lcom/iflytek/cloud/a/g/b;[BLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b$a;->c:Lcom/iflytek/cloud/a/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b$a;->a:[B

    const-string p1, ""

    .line 3
    iput-object p1, p0, Lcom/iflytek/cloud/a/g/b$a;->b:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/iflytek/cloud/a/g/b$a;->a:[B

    .line 5
    iput-object p3, p0, Lcom/iflytek/cloud/a/g/b$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/g/b$a;->a:[B

    return-object v0
.end method
