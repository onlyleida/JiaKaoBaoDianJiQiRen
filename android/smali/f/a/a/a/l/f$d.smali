.class Lf/a/a/a/l/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/l/f;->f(Ljava/lang/Throwable;Ljava/lang/Thread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lf/a/a/a/l/f;


# direct methods
.method constructor <init>(Lf/a/a/a/l/f;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/l/f$d;->b:Lf/a/a/a/l/f;

    iput-object p2, p0, Lf/a/a/a/l/f$d;->a:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/a/a/a/l/f$d;->b:Lf/a/a/a/l/f;

    invoke-static {p1}, Lf/a/a/a/l/f;->d(Lf/a/a/a/l/f;)Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lf/a/a/a/l/f$d;->a:Ljava/lang/Thread;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method
