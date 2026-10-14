.class public final synthetic Lcn/mucang/android/core/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/core/utils/h0$b;

.field public final synthetic b:Lcn/mucang/android/core/utils/f0;

.field public final synthetic c:Ljava/lang/RuntimeException;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/core/utils/c;->a:Lcn/mucang/android/core/utils/h0$b;

    iput-object p2, p0, Lcn/mucang/android/core/utils/c;->b:Lcn/mucang/android/core/utils/f0;

    iput-object p3, p0, Lcn/mucang/android/core/utils/c;->c:Ljava/lang/RuntimeException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/core/utils/c;->a:Lcn/mucang/android/core/utils/h0$b;

    iget-object v1, p0, Lcn/mucang/android/core/utils/c;->b:Lcn/mucang/android/core/utils/f0;

    iget-object v2, p0, Lcn/mucang/android/core/utils/c;->c:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/h0;->h(Lcn/mucang/android/core/utils/h0$b;Lcn/mucang/android/core/utils/f0;Ljava/lang/RuntimeException;)V

    return-void
.end method
