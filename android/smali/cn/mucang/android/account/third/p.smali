.class public final synthetic Lcn/mucang/android/account/third/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/i/a;

.field public final synthetic b:Lcn/mucang/android/core/api/exception/InternalException;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/i/a;Lcn/mucang/android/core/api/exception/InternalException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/third/p;->a:Lcn/mucang/android/account/i/a;

    iput-object p2, p0, Lcn/mucang/android/account/third/p;->b:Lcn/mucang/android/core/api/exception/InternalException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/third/p;->a:Lcn/mucang/android/account/i/a;

    iget-object v1, p0, Lcn/mucang/android/account/third/p;->b:Lcn/mucang/android/core/api/exception/InternalException;

    invoke-static {v0, v1}, Lcn/mucang/android/account/third/y;->x(Lcn/mucang/android/account/i/a;Lcn/mucang/android/core/api/exception/InternalException;)V

    return-void
.end method
