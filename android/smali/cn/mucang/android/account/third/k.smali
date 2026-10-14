.class public final synthetic Lcn/mucang/android/account/third/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/i/a;

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/i/a;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/third/k;->a:Lcn/mucang/android/account/i/a;

    iput-object p2, p0, Lcn/mucang/android/account/third/k;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/third/k;->a:Lcn/mucang/android/account/i/a;

    iget-object v1, p0, Lcn/mucang/android/account/third/k;->b:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lcn/mucang/android/account/third/y;->s(Lcn/mucang/android/account/i/a;Ljava/lang/Exception;)V

    return-void
.end method
