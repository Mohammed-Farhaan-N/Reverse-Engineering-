.class final Lcom/google/android/play/core/ktx/TaskUtilsKt$runTask$$inlined$suspendCancellableCoroutine$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TaskUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/core/ktx/TaskUtilsKt;->runTask(Lcom/google/android/play/core/tasks/Task;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00002\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "T",
        "L;",
        "it",
        "",
        "invoke",
        "(L;)V",
        "kotlin/Throwable",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $onCanceled$inlined:Lkotlin/jvm/functions/Function0;

.field final synthetic $task$inlined:Lcom/google/android/play/core/tasks/Task;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/google/android/play/core/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/ktx/TaskUtilsKt$runTask$$inlined$suspendCancellableCoroutine$lambda$1;->$onCanceled$inlined:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/google/android/play/core/ktx/TaskUtilsKt$runTask$$inlined$suspendCancellableCoroutine$lambda$1;->$task$inlined:Lcom/google/android/play/core/tasks/Task;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/google/android/play/core/ktx/TaskUtilsKt$runTask$$inlined$suspendCancellableCoroutine$lambda$1;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0

    .line 12
    iget-object p1, p0, Lcom/google/android/play/core/ktx/TaskUtilsKt$runTask$$inlined$suspendCancellableCoroutine$lambda$1;->$onCanceled$inlined:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
