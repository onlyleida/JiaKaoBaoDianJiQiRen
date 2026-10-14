.class public Lcn/mucang/android/jiakaoyi/signal/pos/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final b:D

.field public final c:Lcn/mucang/android/jiakaoyi/signal/pos/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->b:D

    .line 4
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v13, v4, v2

    .line 5
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v11, v6, v2

    add-double/2addr v4, v2

    add-double v1, v6, v2

    .line 6
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object v6, v3

    move-wide v7, v13

    move-wide v9, v11

    move-wide v15, v11

    move-wide v11, v4

    move-wide/from16 v17, v4

    move-wide v4, v13

    move-wide v13, v1

    invoke-direct/range {v6 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/b;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v7, v15

    invoke-direct {v6, v4, v5, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v4, v5, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v10, v17

    invoke-direct {v4, v10, v11, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v10, v11, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v3, v6, v9, v4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method
