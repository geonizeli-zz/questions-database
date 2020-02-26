/* global $, cloudinary, ModalMessage */

var getCloudinaryConfig = function() {
  return {
    cloudName: 'dajfqc1om',
    uploadPreset: 'unifeso',
    folder: '/unifeso_profile',
    sources: [
      'local',
      'url',
      'camera'
    ],
    showSkipCropButton: false,
    croppingAspectRatio: 1,
    showAdvancedOptions: false,
    cropping: true,
    multiple: false,
    defaultSource: 'local',
    maxFileSize: 10485760,
    showPoweredBy: false,
    styles: {
      fonts: {
        default: null,
          "'Fira Sans', sans-serif": {
            url: 'https://fonts.googleapis.com/css?family=Fira+Sans',
            active: true
          }
      }
    },
    language: 'pt',
    text: {
      'pt': {
        'or': 'Ou',
        'back': 'Voltar',
        'advanced': 'Avançado',
        'close': 'Fechar',
        'no_results': 'Sem resultados',
        'search_placeholder': 'Buscar arquivos',
        'about_uw': 'Sobre o Upload Widget',
        'menu': {
            'files': 'Meus Arquivos',
            'web': 'URL',
            'camera': 'Câmera',
        },
        'selection_counter': {
            'selected': 'Selecionados'
        },
        'actions': {
            'upload': 'Enviar',
            'clear_all': 'Limpar todos',
            'log_out': 'Sair'
        },
        'notifications': {
            'general_error': 'Um erro ocorreu.',
            'general_prompt': 'Você tem certeza??',
            'limit_reached': 'Limite de arquivos atingido.',
            'invalid_add_url': 'A URL precisa ser válida.',
            'invalid_public_id': 'ID público não pode conter: \\,?,&,#,%,<,>.',
            'no_new_files': 'Os arquivos já foram enviados.',
            'image_purchased': 'Imagem adquirida',
            'video_purchased': 'Vídeo adquirido',
            'purchase_failed': 'A aquisição falou. Por favor, tente novamente.',
            'service_logged_out': 'Serviço desconectado devido a erro',
            'great': 'Ótimo'
        },
        'landscape_overlay': {
            'title': 'Sobreposição de paisagem não é suportado',
            'description': 'Gire seu dispositivo de volta ao modo retrato para continuar.'
        },
        'queue': {
            'title': 'Fila de envio',
            'title_uploading_with_counter': 'Enviando {{num}} arquivos',
            'title_uploading': 'Enviando arquivos',
            'mini_title': 'Enviado',
            'mini_title_uploading': 'Enviando',
            'show_completed': 'Show completed',
            'retry_failed': 'A tentativa falhou',
            'abort_all': 'Cancelar todos',
            'upload_more': 'Envie mais',
            'done': 'Feito',
            'mini_upload_count': '{{num}} envidos',
            'mini_failed': '{{num}} falharam',
            'statuses': {
                'uploading': 'Enviado...',
                'error': 'Erro',
                'uploaded': 'Feito',
                'aborted': 'Abortado'
            }
        },
        'uploader': {
            'filesize': {
                'na': 'N/A',
                'b': '{{size}} Bytes',
                'k': '{{size}} KB',
                'm': '{{size}} MB',
                'g': '{{size}} GB',
                't': '{{size}} TB'
            },
            'errors': {
                'file_too_large': 'Tamanho do arquivo ({{size}}) excede o máximo permitido ({{allowed}})',
                'max_dimensions_validation': 'Dimensões da imagem ({{width}}X{{height}}) são maiores que o máximo permitido: ({{maxWidth}}X{{maxHeight}})',
                'min_dimensions_validation': 'Dimensões da imagem ({{width}}X{{height}}) são menores que o mínimo permitido: ({{minWidth}}X{{minHeight}})',
                'unavailable': 'NA'
            }
        },
        'crop': {
            'title': 'Recortar',
            'crop_btn': 'Cortar',
            'skip_btn': 'Enviar',
            'cancel_btn': 'Cancelar',
            'reset_btn': 'Desfazer',
            'close_btn': 'Fechar',
            'close_prompt': 'Fechar vai cancelar o  envio, tem certeza?',
            'image_error': 'Erro ao carregar imagem',
            'corner_tooltip': 'Arraste o canto para redimencionar',
            'handle_tooltip': 'Arraste a alça para redimencionar'
        },
        'camera': {
            'main_title': 'Câmera',
            'capture': 'Capturar',
            'cancel': 'Cancelar',
            'take_pic': 'Tire uma foto e envie',
            'explanation': 'Certifique-se que sua câmera está conectada e que seu navegador permite o uso dela. Quando estiver pronto, clique em Capturar.',
            'camera_error': 'Falha ao acessar câmera',
            'retry': 'Tentar novamente',
            'file_name': 'Camera_{{time}}'
        },
        'local': {
            'browse': 'Buscar',
            'main_title': 'Envio de Arquivos',
            'dd_title_single': 'Arraste e solte o arquivo aqui',
            'dd_title_multi': 'Arraste e solte os arquivos aqui',
            'drop_title_single': 'Solte o arquivo para enviar',
            'drop_title_multiple': 'Solte os arquivos para enviar'
        },
        'url': {
            'main_title': 'URL Remota',
            'inner_title': 'URL pública do arquivo para upload:',
            'input_placeholder': 'http://remote.site.example/images/remote-image.jpg'
        }
      }
    }
  }
};

const openUploader = cloudinary.openUploadWidget(
  getCloudinaryConfig(),
  (err, result) => {
    if (!err) {
      if (result.event === 'success') {
        console.log(result)
        document.getElementById('cloudinary-uploader-img').src = result.info.url
        document.getElementById('cloudinary-uploader-field').value = result.info.public_id
      }
    }
  }
)

setTimeout(
  document.getElementById("cloudinary").addEventListener("click", openUploader()),
  500
)