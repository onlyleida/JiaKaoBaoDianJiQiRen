.class public final synthetic Lcn/mucang/sundial/android/log/write/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/android/log/write/LogExe;

.field public final synthetic b:[B

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/android/log/write/LogExe;[BLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/a;->a:Lcn/mucang/sundial/android/log/write/LogExe;

    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/a;->b:[B

    iput-object p3, p0, Lcn/mucang/sundial/android/log/write/a;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcn/mucang/sundial/android/log/write/a;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/a;->a:Lcn/mucang/sundial/android/log/write/LogExe;

    iget-object v1, p0, Lcn/mucang/sundial/android/log/write/a;->b:[B

    iget-object v2, p0, Lcn/mucang/sundial/android/log/write/a;->c:Ljava/lang/String;

    iget-wide v3, p0, Lcn/mucang/sundial/android/log/write/a;->d:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/sundial/android/log/write/LogExe;->d([BLjava/lang/String;J)V

    return-void
.end method
