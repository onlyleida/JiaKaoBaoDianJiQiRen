.class Lcom/iflytek/cloud/a/d/e/b/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/e/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->a:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->a:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->a:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    return-void
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/c$b;->b:Ljava/lang/Object;

    return-object v0
.end method
