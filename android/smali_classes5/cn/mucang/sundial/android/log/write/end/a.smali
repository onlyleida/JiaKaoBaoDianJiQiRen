.class public final synthetic Lcn/mucang/sundial/android/log/write/end/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;

.field public final synthetic b:Lcn/mucang/sundial/android/log/db/LogEntity;

.field public final synthetic c:Lcn/mucang/sundial/android/log/LogType;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/end/a;->a:Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;

    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/end/a;->b:Lcn/mucang/sundial/android/log/db/LogEntity;

    iput-object p3, p0, Lcn/mucang/sundial/android/log/write/end/a;->c:Lcn/mucang/sundial/android/log/LogType;

    iput-object p4, p0, Lcn/mucang/sundial/android/log/write/end/a;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/end/a;->a:Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/end/a;->b:Lcn/mucang/sundial/android/log/db/LogEntity;

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/end/a;->c:Lcn/mucang/sundial/android/log/LogType;

    iget-object v3, p0, Lcn/mucang/sundial/android/log/write/end/a;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;->b(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
