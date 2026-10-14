.class final Lcom/loc/ab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ab;->a()Lcom/loc/n$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Lcom/loc/ab;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/loc/ab;

    invoke-direct {v0}, Lcom/loc/ab;-><init>()V

    iput-object v0, p0, Lcom/loc/ab$1;->a:Lcom/loc/ab;

    return-void
.end method


# virtual methods
.method public final a([BLjava/util/Map;)Lcom/loc/bk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/loc/bk;"
        }
    .end annotation

    new-instance v0, Lcom/loc/be;

    invoke-direct {v0, p1, p2}, Lcom/loc/be;-><init>([BLjava/util/Map;)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/loc/ab;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/loc/ab;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/loc/ab$1;->a:Lcom/loc/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/loc/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/loc/ab$1;->a:Lcom/loc/ab;

    invoke-virtual {v0}, Lcom/loc/ab;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
