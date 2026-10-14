.class Lcn/mucang/android/account/h/d$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/h/d$c;->c(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/core/api/exception/ApiException;

.field final synthetic b:Lcn/mucang/android/account/h/d$c;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/h/d$c;Lcn/mucang/android/core/api/exception/ApiException;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/h/d$c$a;->b:Lcn/mucang/android/account/h/d$c;

    iput-object p2, p0, Lcn/mucang/android/account/h/d$c$a;->a:Lcn/mucang/android/core/api/exception/ApiException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/h/d$c$a;->b:Lcn/mucang/android/account/h/d$c;

    iget-object v0, v0, Lcn/mucang/android/account/h/d$c;->e:Lcn/mucang/android/account/h/d;

    iget-object v1, p0, Lcn/mucang/android/account/h/d$c$a;->a:Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/account/h/d;->u(Ljava/lang/String;)V

    return-void
.end method
