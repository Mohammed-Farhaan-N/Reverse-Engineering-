.class final Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt$requestSessionStates$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SplitInstallManagerKtx.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt;->requestSessionStates(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0006\u001a\u0004\u0018\u00010\u0005*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001H\u0086@"
    }
    d2 = {
        "Lcom/google/android/play/core/splitinstall/SplitInstallManager;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;",
        "continuation",
        "",
        "requestSessionStates"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.google.android.play.core.ktx.SplitInstallManagerKtxKt"
    f = "SplitInstallManagerKtx.kt"
    i = {
        0x0
    }
    l = {
        0x59
    }
    m = "requestSessionStates"
    n = {
        "$this$requestSessionStates"
    }
    s = {
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt$requestSessionStates$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt$requestSessionStates$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt$requestSessionStates$1;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/google/android/play/core/ktx/SplitInstallManagerKtxKt;->requestSessionStates(Lcom/google/android/play/core/splitinstall/SplitInstallManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
