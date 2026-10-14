.class final Lcom/loc/n$2;
.super Lcom/loc/cj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/n;->g(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/n$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/loc/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/loc/n$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/n;->B(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/loc/n;->i()Z

    return-void
.end method
