.class Lf/a/a/a/l/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/l/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/a/a/a/l/a;


# direct methods
.method constructor <init>(Lf/a/a/a/l/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/l/a$a;->a:Lf/a/a/a/l/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "HadesLee"

    const-string p2, "onReceive,connective.changed"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lf/a/a/a/l/a$a;->a:Lf/a/a/a/l/a;

    invoke-static {p1}, Lf/a/a/a/l/a;->b(Lf/a/a/a/l/a;)V

    :cond_0
    return-void
.end method
