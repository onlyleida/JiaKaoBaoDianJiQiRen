.class public final synthetic Lcn/mucang/sundial/android/log/write/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/log/write/LogExe;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/log/write/LogExe;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/b;->a:Lcn/mucang/sundial/android/log/write/LogExe;

    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/b;->b:Ljava/lang/Object;

    iput-wide p3, p0, Lcn/mucang/sundial/android/log/write/b;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/b;->a:Lcn/mucang/sundial/android/log/write/LogExe;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/b;->b:Ljava/lang/Object;

    iget-wide v2, p0, Lcn/mucang/sundial/android/log/write/b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/sundial/android/log/write/LogExe;->f(Ljava/lang/Object;J)V

    return-void
.end method
