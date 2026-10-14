.class final Lcom/loc/ck$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/cj$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ck;


# direct methods
.method constructor <init>(Lcom/loc/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ck$1;->a:Lcom/loc/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/loc/cj;)V
    .locals 1

    iget-object v0, p0, Lcom/loc/ck$1;->a:Lcom/loc/ck;

    invoke-virtual {v0, p1}, Lcom/loc/ck;->a(Lcom/loc/cj;)V

    return-void
.end method
